GNU nano 6.2                                    coder.bash                                             
./x264 --output low_config.264 --fps 24 --preset slow --bitrate 100 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=160,height=90" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add low_config.264 -fps 24 Low_config.mp4


./x264 --output medium_config.264 --fps 24 --preset slow --bitrate 600 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=640,height=360" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add medium_config.264 -fps 24 Medium_config.mp4


./x264 --output high_config.264 --fps 24 --preset slow --bitrate 2400 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=1280,height=720" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add high_config.264 -fps 24 High_config.mp4




