# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="gentoo"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"


# Which plugins would you like to load?
plugins=(git)

source $ZSH/oh-my-zsh.sh

## Aliases

# ZSH aliases
alias zshconfig="sudo nano ~/.zshrc"
alias ohmyzsh="sudo nano ~/.oh-my-zsh"

# Git aliases
alias dot='git --git-dir=$HOME/.config/dotfiles.git/ --work-tree=$HOME'
