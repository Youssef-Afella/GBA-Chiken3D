#include <stdio.h>
#include "defines.h"
#include "model.h"

//Global variables
#define  GBA_SW 160                                        //actual gba screen width
#define  SW     160                                        //game screen width
#define  SH     107                                        //game screen height

static int FRAME = 0;
static u16 *VRAM;
static volatile u16* Scanline = (volatile u16*)0x4000006;

static int mRotation = 0;
static int mPosition = 2 * 256;

//Depth Sorting
#define DEPTH_SORT_ROUNDING 5
#define DEPTH_BUCKET_COUNT 64
#define DEPTH_BUCKET_MAX 100

IN_EWRAM
static int depthBuckets[DEPTH_BUCKET_COUNT][DEPTH_BUCKET_MAX] = {0};
static int depthBucketCounter[DEPTH_BUCKET_COUNT] = {0};

static inline int min(int a, int b)
{
    return a < b ? a : b;
}

static inline int max(int a, int b)
{
    return a > b ? a : b;
}

static inline int edge(Vec2i a, Vec2i b, Vec2i p)
{
    return (b.x - a.x) * (p.y - a.y) - (b.y - a.y) * (p.x - a.x);
}

static inline Vec2i project(Vec3i p)
{
    if(p.z < 0) p.z = 0;
    if(p.z > 2549) p.z = 2549;

    int x = (p.x * LUT_InvZ[p.z]) >> 16;
    int y = (p.y * LUT_InvZ[p.z]) >> 16;

    return (Vec2i){x + (SW >> 1), y + (SH >> 1)};
}

static inline Vec3i rotateAroundY0(Vec3i p, int r)
{
    int cosA = LUT_Cos[r];
    int sinA = LUT_Sin[r];

    Vec3i result;
    result.x = ((p.x * cosA) >> 8) - ((p.z * sinA) >> 8);
    result.z = ((p.x * sinA) >> 8) + ((p.z * cosA) >> 8);
    result.y = p.y;

    return result;
}

//Raster function (Edge Walker)
//Require vertices in clock-wise order
//Division is done wia a small lookup table of 240 entry which is more than what its even needed in mode 5.

//First rotates the vertices to make v0 the vertex with lowest y while keeping the order
//calculates the mid and max y
//starts from v0 and goes down the slope until reaching mid_y
//when reaching mid_y, it changes the slope(dx0 or dx1) for one walker then keep moving.
IN_IWRAM
void raster(Vec2i v0, Vec2i v1, Vec2i v2, u16 color, u16* VRAM)
{
    int min_y = min(min(v0.y, v1.y), v2.y);

    Vec2i tmp;
    if(v1.y == min_y) {
        tmp = v0; v0 = v1; v1 = v2; v2 = tmp;
    }
    if(v2.y == min_y) {
        tmp = v2; v2 = v1; v1 = v0; v0 = tmp;
    }
    
    int mid_y, max_y;
    if(v1.y < v2.y) {
        mid_y = v1.y;
        max_y = v2.y;
    }
    else {
        mid_y = v2.y;
        max_y = v1.y;
    }

    int id01y = LUT_Div[v1.y - v0.y];
    int id02y = LUT_Div[v2.y - v0.y];
    int id12y = LUT_Div[max_y - mid_y];

    int s01 = (v1.x - v0.x) * id01y;
    int s02 = (v2.x - v0.x) * id02y;
    int s12 = (v2.x - v1.x) * id12y;

    int row = v0.y * GBA_SW;
    int range = mid_y - v0.y + 1;

    int x0 = v0.x << 16;
    int x1 = x0;

    int dx0 = s02;
    int dx1 = s01;

    #pragma GCC unroll 2
    for(int j = 0; j < 2; j++)
    {
        for(int i = 0; i < range; i++)
        {
            if(row >= 0 && row < SH * GBA_SW)
            {
                int start = (x0 >> 16);
                int end = (x1 >> 16);

                start = max(0, min(start, SW-1));
                end = max(0, min(end, SW-1));

                for(int x = start; x <= end; x++)
                    VRAM[row + x] = color;
            }

            x0 += dx0;
            x1 += dx1;
            row += GBA_SW;
        }

        if(j == 0)
        {
            range = max_y - mid_y;

            if(v1.y == mid_y) {
                x1 = v1.x << 16;
                dx1 = s12;
            }
            else {
                x0 = v2.x << 16;
                dx0 = -s12;
            }
        }
    }
}

void buttons(int* isPressed)
{
    if (KEY_R) {
        *isPressed = 0;
        mRotation -= 3;
    }

    if (KEY_L) {
        *isPressed = 0;
        mRotation += 3;
    }

    if(KEY_U ) {
        mPosition -= 10;
    }
    if(KEY_D ) {
        mPosition += 10;
    }
}

int main()
{
    *(u16*)0x4000000 = 0x405; //Mode 5
    REG_BG2PA = 171; // Scale X                                              
    REG_BG2PD = 171; // Scale Y

    VRAM = (u16*)VRAM_F; //Pointing to Front Buffer
    FRAME = 0;

    int isPressed = 1;

    while(1) 
    { 
        //Waiting for VBlank
        while(*Scanline < 160);

        //Swap Front-Back Buffers
        if (DISPCNT & BACKB) { 
            DISPCNT &= ~BACKB; 
            VRAM = (u16*)VRAM_B;
        } else {                 
            DISPCNT |= BACKB; 
            VRAM = (u16*)VRAM_F;
        }

        //Clear Frame Buffer
        for(int i = 0; i < GBA_SW * SH; i++){
            VRAM[i] = 0;
        }

        buttons(&isPressed);
        mRotation += isPressed * 2;
        if(mRotation > 359) mRotation = 0;
        if(mRotation < 0) mRotation = 359;

        //Transformations
        Vec2i projectedPoints[MODEL_VERTEX_COUNT];
        int projectedZ[MODEL_VERTEX_COUNT];
        for(int i = 0; i < MODEL_VERTEX_COUNT; i++)
        {
            Vec3i p = model_vertices[i];
            p = rotateAroundY0(p, mRotation);
            p.z += mPosition;

            projectedPoints[i] = project(p);
            projectedZ[i] = p.z;
        }
        
        //Bucket Sorting for Depth (Very rough but fast)
        for (int i = 0; i < DEPTH_BUCKET_COUNT; i++)
            depthBucketCounter[i] = 0;
        for(int i = 0; i < MODEL_TRI_COUNT; i++)
        {
            int tri0 = model_triangles[i*3];
            int tri1 = model_triangles[i*3 + 1];
            int tri2 = model_triangles[i*3 + 2];

            //Back-Face/Zero-Surface Culling
            if(edge(projectedPoints[tri0], projectedPoints[tri1], projectedPoints[tri2]) <= 0) continue;

            int z = (projectedZ[tri0] + projectedZ[tri1] + projectedZ[tri2]);
            int b = z >> DEPTH_SORT_ROUNDING;
            if (b < 0) b = 0;
            if (b > DEPTH_BUCKET_COUNT-1) b = DEPTH_BUCKET_COUNT-1;

            depthBuckets[b][depthBucketCounter[b]++] = i;
        }

        //Drawing Buckets Back to Front
        for(int i = DEPTH_BUCKET_COUNT-1; i >= 0; i--)
        {
            for(int j = 0; j < depthBucketCounter[i]; j++)
            {
                int tri = depthBuckets[i][j];

                int t0 = model_triangles[tri * 3];
                int t1 = model_triangles[tri * 3 + 1];
                int t2 = model_triangles[tri * 3 + 2];

                //Some Shading
                Vec3i n = (Vec3i){ model_normals[tri].x, model_normals[tri].y, model_normals[tri].z };
                n = rotateAroundY0(n, mRotation);
                int z = ((120 - n.z) & 255) >> 3;
                Vec3i color = model_palette[model_colors[tri]];
                color.x = (color.x * z) >> 5;
                color.y = (color.y * z) >> 5;
                color.z = (color.z * z) >> 5;

                //Raster
                raster(projectedPoints[t0], projectedPoints[t1], projectedPoints[t2],
                    RGB(color.x, color.y, color.z), VRAM);
            }
        }

        FRAME ++;
    }

    return 0;
}

