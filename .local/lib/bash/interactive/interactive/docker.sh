#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_DOCKER" ] && return
readonly BASHLIB_INTERACTIVE_DOCKER="${BASH_SOURCE[0]##*/bash/}"

dockerup() {
  sudo systemctl start docker
  systemctl --user start docker
}

dockerdown() {
  sudo systemctl stop docker docker.socket containerd
  systemctl --user stop docker
}
