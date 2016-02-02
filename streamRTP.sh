#!/bin/bash

v4l2-ctl --set-fmt-video=width=320,height=240,pixelformat=1

avconv -f video4linux2 -input_format mjpeg -i /dev/video0 -s 320x240 -r 15 -vcodec h263p -f rtp rtp://192.168.1.36:1234/
