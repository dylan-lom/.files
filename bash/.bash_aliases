# Shortcuts
alias beep='tput bel'
alias calc='ghci ~/doc/src/void/hs/RPC.hs'
alias ddg='w3m duckduckgo.com'
alias doas='sudo'
alias git-root='cd "$(git rev-parse --show-cdup)"'
alias ls='ls --color'
alias pastap='pasta -p'
alias plumb='run-mailcap'
alias python='python3'
alias pip='pip3'
alias wiki='vim -c VimwikiIndex'
alias xcp='xclip -selection c'
alias xrandr_auto='xrandr --output DP-1 --auto --right-of eDP-1'
alias e='$EDITOR'
alias v='vim'
alias vi='vim'

alias mount_onedrive="rclone mount --daemon --vfs-cache-mode writes 'Envisage OneDrive:' ~/doc/work/onedrive/"
alias mount_phone='echo mountpoint: /media/dylan/usb; sudo jmtpfs -o allow_other /media/dylan/usb'

alias cwm_13='openbsd-cwm -d :13'
alias steam_13='DISPLAY=:13 steam'
alias xephyr_13='Xephyr -resizeable :13'

alias stayawake='xset s off'
alias nstayawake='xset s'

# Commands
alias clock='while [ true ]; do printf "\r%s" $(date +%H:%M:%S); sleep 1; done'
alias fmtd='fmt -sw 75'
alias playlp='meh cover.* & file -i * | grep audio/.* | cut -d':' -f1 | mpv --no-audio-display --playlist=-'

