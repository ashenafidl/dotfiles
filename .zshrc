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
