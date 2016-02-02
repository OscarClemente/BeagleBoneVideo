#!/bin/bash
v4l2-ctl --set-fmt-video=pixelformat=1

#./video -c 60 -o > output.raw
#avconv -f mjpeg -i output.raw -vcodec copy output.mp4
./video -c 60 -o | avconv -f mjpeg -i - -vcodec copy output.mp4
