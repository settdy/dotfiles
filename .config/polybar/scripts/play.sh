get_status() {
     local status=$(playerctl --player=spotify status 2>&1)
     if [ "$status" = "Playing" ]; then echo ""
     elif [ "$status" = "Paused" ]; then echo ""
     elif [ "$status" = "No players found" ]; then echo ""
    fi
}

case "$1" in
    --toggle)
    playerctl --player=spotify play-pause
        ;;
    *)
    current_status=$(get_status)
    echo "$current_status"
        ;;
esac