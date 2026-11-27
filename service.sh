#!/system/bin/sh
while [ "$(getprop sys.boot_completed | tr -d '\r')" != "1" ]; do
  sleep 2
done
sleep 8
settings put system accelerometer_rotation 0
settings put system user_rotation 1
am start --user 0 -n com.android.deskclock/.DeskClock
