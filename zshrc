## ZSH and oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"
_Z_DATA="$HOME/.zdata"
plugins=(git git-flow gradle zsh-syntax-highlighting z)
source $ZSH/oh-my-zsh.sh

## IUT util classes
#export CLASSPATH=~/iut.jar:~/ihmgui.jar:.

## Dofus version manager
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

## Aliases
alias o='gnome-open'
