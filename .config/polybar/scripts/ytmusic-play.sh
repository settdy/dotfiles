#!/bin/bash

YTMUSIC_URL="https://music.youtube.com"

get_status() {
    if playerctl --player=firefox status >/dev/null 2>&1; then
        url=$(playerctl --player=firefox metadata xesam:url 2>/dev/null)
        if [[ "$url" == *"music.youtube.com"* ]]; then
            local status=$(playerctl --player=firefox status)
            if [ "$status" = "Playing" ]; then echo ""
            elif [ "$status" = "Paused" ]; then echo ""
            else echo "" 
            fi
        else echo ""
        fi
    else echo ""
    fi
}

case "$1" in
    --toggle)
        if playerctl --player=firefox status >/dev/null 2>&1; then
            url=$(playerctl --player=firefox metadata xesam:url 2>/dev/null)
            if [[ "$url" == *"music.youtube.com"* ]]; then
                playerctl --player=firefox play-pause
            else firefox --new-tab "$YTMUSIC_URL"
            fi
        else firefox --new-tab "$YTMUSIC_URL"
        fi
        ;;
    *)
        current_status=$(get_status)
        echo "$current_status"
        ;;
esac
