#
# Modules
#
zmodload zsh/nearcolor

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/prezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/prezto/init.zsh"
fi

# Source ASDF
. $(brew --prefix asdf)/libexec/asdf.sh

#
# Aliases
#
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
alias uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n" | pbcopy'

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
