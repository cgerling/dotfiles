if [[ "$OSTYPE" == darwin* ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
  export HOMEBREW_ARTIFACT_DOMAIN="https://$(op --account thescore.1password.com read --force op://Private/Artifactory/hostname)/artifactory/homebrew"
  export HOMEBREW_DOCKER_REGISTRY_TOKEN="$(op --account thescore.1password.com read --force op://Private/Artifactory/credential)"
fi

export PATH="/usr/local/{bin,sbin}:$PATH"
export PATH="$HOME/.local/bin:$PATH"

