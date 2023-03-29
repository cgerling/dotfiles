if [[ "$OSTYPE" == darwin* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="/usr/local/{bin,sbin}:$PATH"
export PATH="$HOME/.local/bin:$PATH"

