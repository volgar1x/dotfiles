## ZSH and oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
plugins=(git git-flow gradle)
source $ZSH/oh-my-zsh.sh

## IUT util classes
export CLASSPATH=~/iut.jar:~/ihmgui.jar:.

## Dofus version manager
export DOFUS_VERSION=21

## Elixir version manager
source "$HOME/.kiex/scripts/kiex"

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/home/antoine/.jenv/bin/jenv-init.sh" ]] && source "/home/antoine/.jenv/bin/jenv-init.sh" && source "/home/antoine/.jenv/commands/completion.sh"
