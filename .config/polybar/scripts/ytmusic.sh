#!/bin/bash
metadata=$(playerctl -p firefox metadata 2>/dev/null)

if echo "$metadata" | grep -q "music.youtube.com"; then
    title=$(echo "$metadata" | grep -oP 'title\s+\K[^\n]+' | head -1)
    artist=$(echo "$metadata" | grep -oP 'artist\s+\K[^\n]+' | head -1)
    
    if [ -n "$title" ]; then
        if [ -n "$artist" ]; then
          artist=$(echo "$artist" | sed -E 's/[,&+].*| and .*| feat\..*| ft\..*| featuring\..*//' | xargs)
        fi
        max_artist_length=15
        max_title_length=25
        
        if [ -n "$artist" ]; then
            if [ ${#artist} -gt $max_artist_length ]; then
                artist="${artist:0:$((max_artist_length-3))}..."
            fi
            if [ ${#title} -gt $max_title_length ]; then
                title="${title:0:$((max_title_length-3))}..."
            fi
            echo "$artist - $title"
        else
            if [ ${#title} -gt $max_title_length ]; then
                title="${title:0:$((max_title_length-3))}..."
            fi
            echo "$title"
        fi
    fi
fi
