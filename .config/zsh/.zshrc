#
# Modules
#
zmodload zsh/nearcolor

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/prezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/init.zsh"
fi

# Source ASDF (macOS)
if [[ -x "$(command -v asdf)" ]]; then
  if [[ "$OSTYPE" == darwin* ]]; then
    source "$(brew --prefix asdf)/libexec/asdf.sh"
  elif [[ "$OSTYPE" == linux* ]]; then
    source /opt/asdf-vm/asdf.sh
  fi
fi

# direnv
if [[ -x "$(command -v direnv)" ]]; then
  eval "$(direnv hook $SHELL)"
fi

#
# Aliases
#
alias dot='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n" | pbcopy'

alias iex='iex --erl "-kernel shell_history enabled"'
alias mc='mix compile --all-warnings --warnings-as-errors'
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
      ~/.local/bin/tmuxer
    fi
  }

  start_tmux_run
}

start_tmux
