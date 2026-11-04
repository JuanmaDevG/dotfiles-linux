#!/usr/bin/env bash

[ -n "$BASHLIB_INTERACTIVE_GIT" ] && return
readonly BASHLIB_INTERACTIVE_GIT="${BASH_SOURCE[0]##*/bash/}"

alias gstat='git status'
alias gadd='git add .'
alias gcomm='git commit -m'
alias gpsh='git push'
alias gbr='git branch'
alias gpll='git pull'
alias grem='git remote -v'
alias gssh='eval "$(ssh-agent -s)" && ssh-add ~/.ssh/github'
alias gck='git checkout'

function gdownload {
  if [ -z "$1" ]; then
    printf "Usage: gdownload <repo_name> [username | orgname] [-e | --external]\n"
    return
  fi
  if [ -z "$2" ]; then
    local usr_name='JuanmaDevG'
  else
    local usr_name="$2"
  fi
  #TODO: make function gupdate-orgs that displays on file ~/.config/bash/gh-orgs
  # this is to remove the -e argument and use ssh for my orgs
  if [ -z "$3" ]; then
    local connection="git@github.com:"
  elif [ "$3" = "-e" ] || [ "$3" = "--external" ]; then
    local connection="https://github.com/"
  else
    printf "ERROR: third argument must be <-e> or <--external>\n"
    pkill ssh
    return
  fi
  gssh
  git clone "$connection$usr_name/$1"
  pkill ssh
}

function gupload {
  if [ -z "$1" ]; then
    printf "Usage: gupload \"<commit message>\"\n"
    return
  fi
  gadd && gcomm "$1" && gssh && gpsh && pkill ssh
}
