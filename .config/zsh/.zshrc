#
# Modules
#
zmodload zsh/nearcolor

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/prezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/init.zsh"
fi

# Source ASDF (macOS)
if [[ "$OSTYPE" == darwin* ]]; then
  source "$(brew --prefix asdf)/libexec/asdf.sh"
fi

if [[ "$OSTYPE" == linux* ]]; then
  source /opt/asdf-vm/asdf.sh
fi

#
# Aliases
#
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n" | pbcopy'

alias iex='iex --erl "-kernel shell_history enabled"'
alias mt='mix test'
alias mtf='mix test --failed'
alias mtw='mix test --only wip'

#
# Tmux
#
function start_tmux {
  function not_inside_tmux { [[ -z "$TMUX" ]] }

  function start_tmux_run {
    if not_inside_tmux; then
      tmuxer
    fi
  }

  start_tmux_run
}

start_tmux
