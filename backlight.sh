#!/bin/bash

bl_file=/sys/class/backlight/acpi_video0/brightness
max_bl_file=/sys/class/backlight/acpi_video0/max_brightness

value=$(cat $bl_file)
max_value=$(cat $max_bl_file)

increment=2

if [[ "$1" == "up" ]]; then
    if [[ "$value" -lt "$max_value" ]]; then
        let value=$(($value + $increment))
    fi
else
    if [[ "$value" -gt 0 ]]; then
        let value=$(($value - $increment))
    fi
fi

echo "$value" > $bl_file
xsetroot -name "brightness $value"

