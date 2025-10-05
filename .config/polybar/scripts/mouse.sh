#!/bin/bash

blue="#7dc4e4"   
red="#ed8796"      
text="#D8DEE9" 

status=$(echo -e "info F4:EE:25:88:7F:98" | bluetoothctl | grep "Connected" | awk '{print $2}')
battery=$(echo -e "info F4:EE:25:88:7F:98" | bluetoothctl | grep "Battery Percentage" | awk '{print $4}' | tr -d '()')

if [ "$status" = "yes" ]; then echo "%{F$blue}󰍽 %{F$text}$battery%%{F-}"
else echo ""
fi
