## ZSH and oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"
_Z_DATA="$HOME/.zdata"
plugins=(git git-flow gradle zsh-syntax-highlighting z node npm)
source $ZSH/oh-my-zsh.sh

[[ -d "$HOME/.bin" ]] && export PATH="$PATH:$HOME/.bin"

## IUT util classes
#export CLASSPATH=~/iut.jar:~/ihmgui.jar:.

## Dofus version manager
export DOFUS_INSTALL_BASE="$HOME/.dofus"
export DOFUS_VERSION=21

## Erlang version manager
[[ -s "$HOME/.evm/scripts/evm" ]] && source "$HOME/.evm/scripts/evm"

## Elixir version manager
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

## JVM version manager
[[ -s "$HOME/.jenv/bin/jenv-init.sh" ]] && source "$HOME/.jenv/bin/jenv-init.sh" && source "$HOME/.jenv/commands/completion.sh"

## Ruby version manager
export PATH="$PATH:$HOME/.rvm/bin"
source "$HOME/.rvm/scripts/rvm"

## Nodejs version manager
export NVM_DIR="/home/antoine/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

## Aliases
alias o='gnome-open'

