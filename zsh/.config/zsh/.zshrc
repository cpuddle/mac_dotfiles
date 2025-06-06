autoload -U colors && colors

export XDG_CONFIG_HOME=$HOME/.config
export ZDOTDIR=XDG_CONFIG_HOME/zsh

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

PS1="%F{blue}%1~%f %F{green}%f%b "

plugins=(
    zsh-syntax-highlighting
)

    alias ls='ls --color=auto'
# some more ls aliases
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -l'
    alias ..='cd ..'
# enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
