#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_UTILS" ] && return
readonly BASHLIB_INTERACTIVE_UTILS="${BASH_SOURCE[0]##*/bash/}"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias ..='cd ..'
alias ...='cd ../..'
alias cal='task calendar'
alias py='python3'
alias pyvenv='. ~/.local/apps/pyvenv/bin/activate'
alias unpyvenv='deactivate'
