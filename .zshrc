# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Which plugins would you like to load?
plugins=(git docker docker-compose zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

## Aliases
# System aliases
alias rm="rm -i"
alias cp="cp -i"

# ZSH aliases
alias zshconfig="sudo nano ~/.zshrc"
alias ohmyzsh="sudo nano ~/.oh-my-zsh"

# Git aliases
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# pnpm aliases
alias pn="pnpm"
alias px="pnpx"
alias pi="pnpm install"
alias pb="pnpm build"
alias ps="pnpm start"
alias pd="pnpm dev"

# Opencode
alias oc="opencode"

# Starship
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/ashenafi/.bun/_bun" ] && source "/home/ashenafi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/ashenafi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

export PATH="$PATH:$HOME/.puro/bin" # Added by Puro
export PATH="$PATH:$HOME/.puro/shared/pub_cache/bin" # Added by Puro
export PATH="$PATH:$HOME/.puro/envs/default/flutter/bin" # Added by Puro
export PURO_ROOT="/home/ashenafi/.puro" # Added by Puro

# opencode
export PATH=/home/ashenafi/.opencode/bin:$PATH
