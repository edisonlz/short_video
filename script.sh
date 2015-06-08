ffmpeg -i 12.flv  -ss 00:01:50   -t 00:00:10  -f segment -acodec copy -vcodec copy -async 1 -y  o12.flv


ffmpeg -ss 116.120000 -i 1.mp4 -t 60 -c copy -avoid_negative_ts 1 cut.mp4


ffprobe -show_frames -print_format json=c=1  1.mp4



ffmpeg -i 1.mp4 -f segment -segment_times 10 -vcodec copy 11.mp4




#here we do
ffmpeg -i 2.mp4  -ss 00:01:50   -t 00:00:10   -acodec copy  -async 1 -y  o2.mp4

ffmpeg -i 12.flv  -ss 00:01:50   -t 00:00:10   -acodec copy  -async 1 -y  o2.mp4


ffmpeg -i he.flv  -ss 00:00:00   -t 00:01:05   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 128k  -async 1 -s 320x240 -y   hesi.mp4

ffmpeg -i adv.flv  -ss 00:00:00   -t 00:00:15   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 128k  -async 1 -s 320x240 -y  adv.mp4


ffmpeg -f concat -i  -c copy output.mp4


ffmpeg -i adv.flv  -ss 00:00:00   -t 00:00:15   -acodec copy  -async 1 -y  adv.mp4


ffmpeg -f concat -i list.text -c copy output.mp4





ffmpeg -i he.flv  -ss 00:00:00   -t 00:01:05   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 64k  -async 1 -s 320x180 -y   hesi.mp4

ffmpeg -i adv.flv  -ss 00:00:00   -t 00:00:15   -acodec copy -vcodec libx264 -crf 23 -preset medium -acodec aac -strict experimental -ac 2 -ar 44100 -ab 64k  -async 1 -s 320x180 -y  adv.mp4

bash out.sh  hesi.mp4 adv.mp4 t.mp4


