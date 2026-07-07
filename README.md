# GBA-Chiken3D
3D Software Rasterizer on GBA to render a Chiken, of course<br>
(you can use it to render other stuff if for some reason you want)

The GBA processor is a 32bit ARM7TDMI running at 16.78 MHz. At Mode 5 we get double buffering with a resolution of 160×128<br>
To fill screen at 30fps we don't get more than 16M/(160*128*30) = 26cycles for each pixel<br>
With no float point units and a whopping 256KB of RAM, writing a simple software rasterizer is a very serious challenge.<br>

My main motivation is [OpenLara Project](https://github.com/XProger/OpenLara) and [Joshua Barretto](https://www.youtube.com/@jsbarretto) port of Mario 64 which is leagues ahead from what I was able to achieve.

## Compile
First you need to download the [devkitPro](https://devkitpro.org/wiki/Getting_Started)
Then run "make.sh"
If you want to run the game also directly just download [mGBA](https://mgba.io/) and paste the exe file next to make.sh

## Controls
Right/Left button for rotation.<br>
Up/Down button to zoom in/out.<br>

## Rotating Chiken
<img width="256" height="256" alt="Sequence 01_1" src="https://github.com/user-attachments/assets/eb1093dd-1c29-445e-8799-a2a2ffb09ea6" />

## Tech Details
- The algorithm used for raster is a standard Edge Walker since I found it to be the fastest in my tests, I haven't really followed any article about it, I just implemented it in the most optimal way I could possibly manage to do.<br>
The division is done with a small lookup table of 240 entry which is more than enough for mode5 (only 160 is needed)
- Implementing a real depth buffer has a very high cost in memory and performance. Also correctly sorting triangles and drawing them with the painter's algorithm is no better. So I borrowed the idea of Joshua of not caring about perfect sorting and dividing triangles over depth buckets (or bins as he said) then drawing the buckets from the furthest to the nearest with whatever order we founded them in the bin. (Not sure this is the same algorithm he is using but thats what I understood from his talk).
- Projection is done via a very large lookup table of the inverse of the Z (10 * 255 entries, so it supports only up to 10 units from camera).
- No negative Z handling.
- No real transformations are used in this demo, just simple rotation and simple position offset.
- No texture mapping is implemented (not needed for our chiken, but other chikens might need it).

## Inspiration
- [Kaze Emanuar video](https://youtu.be/kueoO3b4B-M?si=LEqiR-aQR5xYyCXh)
- [Joshua Barretto channel](https://www.youtube.com/@jsbarretto)
- [OpenLara](https://github.com/XProger/OpenLara)
- [Sunshine Post](https://www.sunshine2k.de/coding/java/TriangleRasterization/TriangleRasterization.html)
