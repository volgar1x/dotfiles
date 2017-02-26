# Found on the ZshWiki
#  http://zshwiki.org/home/config/prompt
#

#PROMPT="%{$fg[red]%}%%%{$reset_color%} "
prompt_status() {
  echo '%(?.$fg[white].$fg[red])λ%{$reset_color%}'
}
PROMPT="$(prompt_status) %{$fg[green]%}$(hostname)%{$reset_color%}@%{$fg[yellow]%}$(whoami)%{$reset_color%} ❯ "
