#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_MYSQL" ] && return
readonly BASHLIB_INTERACTIVE_MYSQL="${BASH_SOURCE[0]##*/bash/}"

alias mysql-up="sudo systemctl start mysql"
alias mysql-down="sudo systemctl stop mysql"
