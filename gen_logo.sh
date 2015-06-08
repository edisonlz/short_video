#!/bin/bash

#install ffmeg
#brew reinstall ffmpeg --enable-avfilter --enable-avfilter-lavf --with-fdk-aac --with-ffplay --with-freetype --with-libass --with-libquvi --with-libvorbis --with-libvpx --with-opus --with-x265
#
video=$1
video_start=$2
video_end=$3
logo=$4
out=$5

echo $video
echo $logo

if [ -z $5 ]; then
	echo "Syntax: $0 <video> <logo> ... <output>"
	exit 1
fi

ffmpeg -i $video  -ss $video_start   -t $video_end   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 64k  -async 1 -s 320x180  -vf "movie=me.jpg [icon]; [in][icon] overlay=main_w-overlay_w-10:main_h-overlay_h-10 [out]" -y   $out


# Top left corner
# ffmpeg –i inputvideo.avi -vf “movie=watermarklogo.png [watermark]; [in][watermark] overlay=10:10 [out]” outputvideo.flv

# Top right corner
# ffmpeg –i inputvideo.avi -vf “movie=watermarklogo.png [watermark]; [in][watermark] overlay=main_w-overlay_w-10:10 [out]” outputvideo.flv

# Bottom left corner
# ffmpeg –i inputvideo.avi -vf “movie=watermarklogo.png [watermark]; [in][watermark] overlay=10:main_h-overlay_h-10 [out]” outputvideo.flv

# Bottom right corner
# ffmpeg –i inputvideo.avi -vf “movie=watermarklogo.png [watermark]; [in][watermark] overlay=main_w-overlay_w-10:main_h-overlay_h-10 [out]” outputvideo.flv