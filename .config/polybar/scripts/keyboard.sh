blue="#c6a0f6"   
red="#ed8796"      
text="#D8DEE9" 

if [ "$(fcitx-remote)" -eq 1 ]; then echo "%{F$blue}  %{F$text}en%{F-}"
elif [ "$(fcitx-remote)" -eq 2 ]; then echo "%{F$red}  %{F$text}cn%{F-}"
else echo "%{F$blue}  %{F$text}en%{F-}"
fi
