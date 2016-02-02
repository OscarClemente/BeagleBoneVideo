
v4l2-ctl --set-fmt-video=width=320,height=240,pixelformat=1
v4l2-ctl --set-parm=15

avconv -f video4linux2 -input_format mjpeg -i /dev/video0 -s 320x240 -r 15 -c:v libx264 -f flv rtmp://a.rtmp.youtube.com/live2/hassio.dev.6t8m-v7z3-602f-55mk

#ffmpeg -f video4linux2 -vcodec mjpeg -r 11 -s 320x240 -i /dev/video0 -f flv rtmp://1.21911731.fme.ustream.tv/ustreamVideo/21911731/GKNd9jb2Bpg6yphK6bkpEERCyA7xnd9b

