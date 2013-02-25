#!/bin/sh

while true; do
    DATE="$(date +%a\ %d\ %b\ %H:%M)"
    BATTERY="$(acpi -b | cut -d, -f2)"
    TEMP="$(acpi -t | tail -1 | cut -d, -f2 | sed 's/degrees\ //')"
    LOAD="$(uptime | cut -d, -f3 | cut -d: -f2)"
    xsetroot -name "$LOAD | $TEMP |$BATTERY | $DATE"
    sleep 1m
done

