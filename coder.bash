GNU nano 6.2                                    coder.bash                                             
./x264 --output low_config.264 --fps 24 --preset slow --bitrate 100 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=160,height=90" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add low_config.264 -fps 24 Low_config.mp4


./x264 --output medium_config.264 --fps 24 --preset slow --bitrate 600 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=640,height=360" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add medium_config.264 -fps 24 Medium_config.mp4


./x264 --output high_config.264 --fps 24 --preset slow --bitrate 2400 --vbv-maxrate 4800 --vbv-bufsize 9600 --min-keyint 48 --keyint 48 --scenecut 0 --no-scenecut --pass 1 --video-filter "resize:width=1280,height=720" video_p3.mp4
./gpac_public/bin/gcc/MP4Box -add high_config.264 -fps 24 High_config.mp4

Bento4/bin/mp4fragment Low_config.mp4 Low_config_fragment.mp4
Bento4/bin/mp4fragment Medium_config.mp4 Medium_config_fragment.mp4
Bento4/bin/mp4fragment High_config.mp4 High_config_fragment.mp4

Bento4/bin/mp4dash Low_config_fragment.mp4 Medium_config_fragment.mp4 High_config_fragment.mp4

Bento4/bin/mp4encrypt --method MPEG-CENC --key 1:87237D20A19F58A740C05684E699B4AA:random --property 1:KID:A16E402B9056E371F36D348AA62BB749 --global-option mpeg-cenc.eme-pssh:true Low_config_fragment.mp4 Low_config_fragment_drm.mp4
Bento4/bin/mp4encrypt --method MPEG-CENC --key 1:87237D20A19F58A740C05684E699B4AA:random --property 1:KID:A16E402B9056E371F36D348AA62BB749 --global-option mpeg-cenc.eme-pssh:true Medium_config_fragment.mp4 Medium_config_fragment_drm.mp4
Bento4/bin/mp4encrypt --method MPEG-CENC --key 1:87237D20A19F58A740C05684E699B4AA:random --property 1:KID:A16E402B9056E371F36D348AA62BB749 --global-option mpeg-cenc.eme-pssh:true High_config_fragment.mp4 High_config_fragment_drm.mp4

rm -r output

Bento4/bin/mp4dash Low_config_fragment_drm.mp4 Medium_config_fragment_drm.mp4 High_config_fragment_drm.mp4





