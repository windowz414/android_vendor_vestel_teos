#!/system/bin/sh

insmod /system/lib/modules/wlan.ko con_mode=5
mkdir /data/misc/ftm
cp /system/bin/ptt_socket_app /data/misc/ftm/
cp /system/bin/ftmdaemon /data/misc/ftm/
chmod 0766 /data/misc/ftm/ftmdaemon
ftmdaemon
ptt_socket_app -v -d -f
