# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="gentoo"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Which plugins would you like to load?
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

## Aliases
# ZSH aliases
alias zshconfig="sudo nano ~/.zshrc"
alias ohmyzsh="sudo nano ~/.oh-my-zsh"

# Git aliases
alias dot='git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME'

# pnpm aliases
alias pn="pnpm"
alias px="pnpx"
alias pi="pnpm install"
alias pb="pnpm build"
alias ps="pnpm start"
alias pd="pnpm dev"

# docker aliases
alias dcup="docker compose up"
alias dcdn="docker compose down"
alias dcb="docker compose build"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/home/ashenafi/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
