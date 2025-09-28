EDITOR="nvim"
zstyle ':z4h:' auto-update      'no'
zstyle ':z4h:' auto-update-days '28'
zstyle ':z4h:bindkey' keyboard  'pc'
zstyle ':z4h:' start-tmux       no
zstyle ':z4h:' term-shell-integration 'yes'
zstyle ':z4h:autosuggestions' forward-char 'accept'
zstyle ':z4h:direnv'         enable 'no'
# Show "loading" and "unloading" notifications from direnv.
zstyle ':z4h:direnv:success' notify 'yes'

# Enable ('yes') or disable ('no') automatic teleportation of z4h over
# SSH when connecting to these hosts.
zstyle ':z4h:ssh:example-hostname1'   enable 'yes'
zstyle ':z4h:ssh:*.example-hostname2' enable 'no'
# The default value if none of the overrides above match the hostname.
zstyle ':z4h:ssh:*'                   enable 'no'


zstyle ':z4h:ssh:*' send-extra-files '~/.nanorc' '~/.env.zsh'

z4h init || return

path=(~/bin $path)

export GPG_TTY=$TTY

# Source additional local files if they exist.
#z4h source ~/.env.zsh

# Use additional Git repositories pulled in with `z4h install`.
#
# This is just an example that you should delete. It does nothing useful.

# Define key bindings.
z4h bindkey z4h-backward-kill-word  Ctrl+Backspace     Ctrl+H
z4h bindkey z4h-backward-kill-zword Ctrl+Alt+Backspace

z4h bindkey undo Ctrl+/ Shift+Tab  # undo the last command line change
z4h bindkey redo Alt+/             # redo the last undone command line change

z4h bindkey z4h-cd-back    Alt+Left   # cd into the previous directory
z4h bindkey z4h-cd-forward Alt+Right  # cd into the next directory
z4h bindkey z4h-cd-up      Alt+Up     # cd into the parent directory
z4h bindkey z4h-cd-down    Alt+Down   # cd into a child directory

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Define named directories: ~w <=> Windows home directory on WSL.
[[ -z $z4h_win_home ]] || hash -d w=$z4h_win_home

# Define aliases.
alias tree='tree -a -I .git'

# Add flags to existing aliases.
alias ls="${aliases[ls]:-ls} -A"

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
setopt no_auto_menu  # require an extra TAB press to open the completion menu
alias n="nvim"
alias zap="neofetch"
alias powermenu="rofi -show power-menu -modi power-menu:rofi-power-menu> /dev/null 2>&1"
alias cls="clear"
alias clr="clear"
alias f='find . -type f | fzf --preview="cat {}"| xargs -r nvim' 


alias g="git --git-dir=$HOME/Documents/dotfiles/ --work-tree=$HOME"
alias ga="g add"
alias gc="g commit"
alias gcl="g clone"
alias gd="g diff"
alias gi="g init"
alias gs="g status"
alias gp="g push -u origin main"

alias spot="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"
alias discord="flatpak run com.discordapp.Discord > /dev/null 2>&1"
alias ff="fastfetch"
alias wifimenu=".local/bin/rofi-wifi-menu.sh"
alias clock="tty-clock -S -C 4"
alias ytmp3="yt-dlp -t mp3 --paths "./Music/""
alias ytmp4="yt-dlp -t mp4 --embed-thumbnail --paths "./Videos/""
alias ytplay="yt-dlp --paths "./Videos/playlist/" --yes-playlist"
alias font="fc-list"

function hp() {
    echo -e "info B4:E7:B3:B0:A4:02" | bluetoothctl | grep "Name"
    echo -e "info B4:E7:B3:B0:A4:02" | bluetoothctl | grep "Connected"
    echo -e "info B4:E7:B3:B0:A4:02" | bluetoothctl | grep "Battery Percentage"
}

function mouse() {
    	echo -e "info F4:EE:25:88:7F:98" | bluetoothctl |grep "Name"
    	echo -e "info F4:EE:25:88:7F:98" | bluetoothctl |grep "Connected"
    	echo -e "info F4:EE:25:88:7F:98" | bluetoothctl |grep "Battery Percentage"
}
export PATH="$PATH:/home/zap/.local/bin"
export PATH=$PATH:/home/zap/.spicetify
export PATH="$HOME/.fzf/bin:$PATH"
export TERM=xterm
source <(fzf --zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)
