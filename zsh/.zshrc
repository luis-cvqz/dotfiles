# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to bin directory
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# -- Oh My Zsh Theme --
ZSH_THEME=powerlevel10k/powerlevel10k

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# -- Oh My Zsh Plugins --
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=es_MX.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# -- Aliases --
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Alias to shortcut cd to the previous directory
alias cd..="cd .."

# Alias to shortcut clear to cls
alias cls='clear'

# Alias to shortcut icat when using kitty terminal
alias icat='kitten icat'

# Alias for exa file listing
alias ls='exa --icons'

# -- Functions --
# Set personal functions. Functions can be defined here, though oh-my-zsh
# users are encouraged to define functions within the ZSH_CUSTOM folder.
# For a full list of active functions, run `functions`.

# Function to change wal theme on GNOME
gwal() {
  wal --cols16 -b "#000000" -i "$@"
  # When using Gnome dark mode
  dconf write /org/gnome/desktop/background/picture-uri-dark "'file://$(cat ${HOME}/.cache/wal/wal)'"
  # When using Gnome light mode
  # dconf write /org/gnome/desktop/background/picture-uri "'file://$(cat ${HOME}/.cache/wal/wal)'"
}
# Light wal theme
gwal-l() {
  wal --cols16 -l -i "$@"
  # When using Gnome dark mode
  dconf write /org/gnome/desktop/background/picture-uri-dark "'file://$(cat ${HOME}/.cache/wal/wal)'"
  # When using Gnome light mode
  # dconf write /org/gnome/desktop/background/picture-uri "'file://$(cat ${HOME}/.cache/wal/wal)'"
}
# Function to change wal theme to a random wallpaper
rgwal() {
  wal --cols16 -i ~/Pictures/Wallpapers/
  dconf write /org/gnome/desktop/background/picture-uri-dark "'file://$(cat ${HOME}/.cache/wal/wal)'"
}

# Function to copy the git token for CLI authentication to clipboard
git-token() {
  local token_file="$HOME/.gittoken"

  if [[ ! -f "$token_file" ]]; then
    echo "Error: the file '$token_file' doesn't exist."
    return 1
  fi

  if [[ ! -s "$token_file" ]]; then
    echo "Error: the file '$token_file' is empty."
    return 1
  fi

  xclip -sel c < "$token_file"
  echo "Git token copied to clipboard."
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
# cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# zoxide smart directory jumper
eval "$(zoxide init zsh)"

# fzf fuzzy finder
eval "$(fzf --zsh)"
