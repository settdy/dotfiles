blue="#c6a0f6"   
red="#ed8796"      

get_current_language() {
    local lang=$(fcitx-remote)
    if [ "$lang" -eq 1 ]; then echo "%{F$blue} {F-}"
    elif [ "$lang" -eq 2 ]; then echo "%{F$red} {F-}"
    else echo "%{F$blue} {F-}"
    fi
}

case "$1" in
    --toggle)
        fcitx-remote -t
        ;;
    *)
        current_lang=$(get_current_language)
        echo "$current_lang"
        ;;
esac
