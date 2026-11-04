#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_HARDWARE" ] && return
readonly BASHLIB_INTERACTIVE_HARDWARE="${BASH_SOURCE[0]##*/bash/}"

alias uskb="setxkbmap us"
alias eskb="setxkbmap es"
