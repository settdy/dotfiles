#!/bin/bash

current_brightness=$(brightnessctl get)
max_brightness=$(brightnessctl max)

current_percentage=$(( 100 * current_brightness / max_brightness ))

options="󰃠 Current Brightness: $current_percentage%\n Increase\n Decrease\n Set to 30%\n Set to 50%\n Set to 100%"

# Show the Rofi menu
chosen=$(echo -e "$options" | rofi -dmenu -i "Brightness Control")

case "$chosen" in
  " Increase")
    sudo brightnessctl set +10% 
    ;;
  " Decrease")
    sudo brightnessctl set 10%-  
    ;;
  " Set to 30%")
    sudo brightnessctl set 30%
    ;;
  " Set to 50%")
    sudo brightnessctl set 50%    
    ;;
  " Set to 100%")
    sudo brightnessctl set 100%    
    ;;
  *)
    echo "No valid option selected."
    ;;
esac
