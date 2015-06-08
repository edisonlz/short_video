#!/bin/bash

#install ffmeg
#brew reinstall ffmpeg --enable-avfilter --enable-avfilter-lavf --with-fdk-aac --with-ffplay --with-freetype --with-libass --with-libquvi --with-libvorbis --with-libvpx --with-opus --with-x265
#
video=$1
video_start=$2
video_end=$3
adv=$4
adv_start=$5
adv_end=$6
out=$7

echo video

if [ -z $7 ]; then
	echo "Syntax: $0 <video> <adv>  ... <output>"
	exit 1
fi

ffmpeg -i $video  -ss $video_start   -t $video_end   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 64k  -async 1 -s 320x180 -y   $video.mp4

ffmpeg -i $adv  -ss $adv_start   -t $adv_end  -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 64k  -async 1 -s 320x180 -y  $adv.mp4


bash out.sh  $video.mp4 $adv.mp4 $out

rm -rf *.flv.mp4

