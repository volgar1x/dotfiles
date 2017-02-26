#!/usr/bin/env zsh
DEBUG=false
function debug() {
	if [[ "$DEBUG" == true ]]; then
		echo "$@"
	fi
}
export EDITOR="vim"

## ZSH and oh-my-zsh
debug "load oh-my-zsh"
ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM="$HOME/Workspace/dotfiles/oh-my-zsh"
ZSH_THEME="achauvin2"
_Z_DATA="$HOME/.zdata"
plugins=(git git-flow gradle zsh-syntax-highlighting z node npm brew osx)
source $ZSH/oh-my-zsh.sh

[[ -d "$HOME/.bin" ]] && export PATH="$PATH:$HOME/.bin"

## IUT util classes
#export CLASSPATH=~/iut.jar:~/ihmgui.jar:.

export LC_CTYPE=en_US.UTF-8

## Dofus version manager
export DOFUS_INSTALL_BASE="/opt/dofus"
export DOFUS_VERSION=21

## Erlang version manager
debug "load erlang version manager"
[[ -s "$HOME/.evm/scripts/evm" ]] && source "$HOME/.evm/scripts/evm"

## Elixir version manager
debug "load elixir version manager"
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

## JVM version manager
debug "load jvm version manager"
[[ -s "$HOME/.jenv/bin/jenv-init.sh" ]] && source "$HOME/.jenv/bin/jenv-init.sh" && source "$HOME/.jenv/commands/completion.sh"

## Ruby version manager
debug "load ruby version manager"
[[ -d "$HOME/.rvm" ]] && export PATH="$HOME/.rvm/bin:$PATH" && source "$HOME/.rvm/scripts/rvm"

## Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/tools"

## Nodejs version manager
debug "load nodejs version manager"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## Aliases
alias o='gnome-open'
alias rn='react-native'

## Disable JAyatana
unset JAVA_TOOL_OPTIONS

# FUCK
alias fuck='eval $(thefuck $(fc -ln -1))'

# Homebrew
export LINUXBREW_CELLAR="/opt/linuxbrew/Cellar"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# Java
# export JAVA_HOME="$(dirname $(greadlink -f $(which java)))/.."
# export MANPATH="$MANPATH:$JAVA_HOME/man"

# Go
export GOPATH="$HOME/Workspace/Goworkspace"
export PATH="$PATH:$GOPATH/bin"

# Emacs
export PATH="$PATH:/opt/emacs/bin"
export MANPATH="$MANPATH:/opt/emacs/share/man/"

# Scala
export PATH="$PATH:/opt/scala/2.11.6/bin:/opt/sbt/0.13.8/bin"
export MANPATH="$MANPATH:/opt/scala/2.11.6/man"

# PHP
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

export PGDATA="/usr/local/var/postgres"

export PATH="./node_modules/.bin:$PATH"
export PATH="./vendor/bin:$PATH"

if [[ -d "$HOME/.zshrc.d" ]]; then
  for file in "$(find ~/.zshrc.d -type f)"; do
    source "$file"
  done
fi

if which docker-machine > /dev/null; then
  machines=`docker-machine ls -q --filter state=Running --filter driver=virtualbox`
  if [[ -n "$machines" ]]; then
    machine=`echo "$machines" | head -n1`
    eval $(docker-machine env "$machine")
  fi
fi

rm ~/.zcompdump*

# python "$HOME/.motivate/motivate"

~/.motivate/motivate | cowsay -W 70 -f bong | lolcat -t
echo
