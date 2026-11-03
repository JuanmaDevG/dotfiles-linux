#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_HARDWARE" ] && return
readonly BASHLIB_INTERACTIVE_HARDWARE=true

alias uskb="setxkbmap us"
alias eskb="setxkbmap es"
