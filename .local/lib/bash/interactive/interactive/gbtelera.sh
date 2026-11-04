#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_GBTELERA" ] && return
readonly BASHLIB_INTERACTIVE_GBTELERA="${BASH_SOURCE[0]##*/bash/}"

sdk_dir="$HOME/.local/apps"
gbt_dir="$sdk_dir/gbtelera"

export GBT_PATH=$gbt_dir
export PATH="$PATH:$gbt_dir/tools/scripts"

function bgb {
  [ ! -f ./game.gb ] && printf "ERROR: you must be inside a project with game.gb\n" && return
  gbt_bgb ./game.gb
}

function emul {
  [ ! -f ./game.gb ] && printf "ERROR: you must be inside a project with game.gb\n" && return
  gbt_emulicious ./game.gb
}

alias gbtd="wine $sdk_dir/GBTD/gbtd.exe & disown -a"
alias gbmb="wine $sdk_dir/GBMB/gbmb.exe & disown -a"

printf "%s\n%s\n%s\n%s" \
  "Added to PATH: $gbt_dir" \
  "Added env variable GBT_PATH: $gbt_dir" \
  "Added helpers: bgb, emul, gbtd, gbmb"

unset sdk_dir
unset gbt_dir
