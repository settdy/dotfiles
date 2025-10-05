#!/bin/bash

blue="#f5a97f"
red="#ed8796"      
text="#D8DEE9" 

status=$(echo -e "info B4:E7:B3:B0:A4:02" | bluetoothctl | grep "Connected" | awk '{print $2}')
battery=$(echo -e "info B4:E7:B3:B0:A4:02" | bluetoothctl | grep "Battery Percentage" | awk '{print $4}' | tr -d '()')

if [ "$status" = "yes" ]; then echo "%{F$blue}󰋋 %{F$text}$battery%%{F-}"
else echo ""
fi
