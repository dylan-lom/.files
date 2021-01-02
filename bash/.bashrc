export EDITOR=vim
export VISUAL=${EDITOR}
export PAGER=less
export OPEN=xdg-open

PATH=${HOME}/.local/bin:${HOME}/bin:${HOME}/.cargo/bin:${HOME}/go/bin:${HOME}/pkg/bin:${PATH}
MANPATH=${MANPATH}:${HOME}/.local/share/man:${HOME}/pkg/man
export PATH MANPATH

# Prompt
getlastcmd() {
	echo "$(history 1 | awk '{ printf $2 }')"
}
# Title the window whatever the last command was
PROMPT_COMMAND='xhost >& /dev/null && echo -ne "\e]0;$TERM | $(getlastcmd)\007"'
PS1='\u:\w$ '
PS2='> '
export PROMPT_COMMAND PS1 PS2

set -o vi

# Aliases, functions
. ${HOME}/.bash_aliases
. ${HOME}/.bash_functions


# Turn off history -> file saving
unset HISTFILE

# Source bashmarks
. ${HOME}/bin/bashmarks.sh

# Tab completion stuff
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

cd ~

# NVM junk
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
