#!/usr/bin/env zsh
export EDITOR="vim"

## ZSH and oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/Workspace/dotfiles/oh-my-zsh"
ZSH_THEME="kolo"
ZSH_DISABLE_COMPFIX=true
_Z_DATA="$HOME/.zdata"
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8

export PATH="./node_modules/.bin:$PATH" # node
export PATH="./vendor/bin:$PATH" # composer

export GNUPGHOME="~/Nextcloud/gpg"
export GPG_TTY=$(tty)
