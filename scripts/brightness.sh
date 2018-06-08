#!/usr/bin/env bash

dev="/sys/class/backlight/intel_backlight"
max=$(cat "$dev/max_brightness")
cur=$(cat "$dev/brightness")

case $1 in -|+);;
    *) 
        echo $(($cur * 100 / $max))
        exit 1;;
esac

step=$(($max / 10))

brightness=$(($cur $1 $step))

if [ "$brightness" -lt 0 ] ; then
    brightness=0
fi
if [ "$brightness" -gt "$max" ] ; then
    brightness="$max"
fi

echo "$brightness" | sudo /usr/bin/tee "$dev/brightness"
