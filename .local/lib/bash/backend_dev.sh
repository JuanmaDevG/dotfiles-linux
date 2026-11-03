#!/usr/bin/env bash

[ -n "$BASHLIB_BACKEND_DEV" ] && return
readonly BASHLIB_BACKEND_DEV=true

alias mysql-up="sudo systemctl start mysql"
alias mysql-down="sudo systemctl stop mysql"

dockerup() {
  sudo systemctl start docker
  systemctl --user start docker
}

dockerdown() {
  sudo systemctl stop docker docker.socket containerd
  systemctl --user stop docker
}
