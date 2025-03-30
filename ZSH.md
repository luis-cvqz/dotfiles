# Pre-requisites for stowing zsh

Before stowing zsh you have to make sure Oh My Zsh framework is installed because the .zshrc file is configured with Oh My Zsh
``` zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

In the .zshrc file are included some packages and plugins that will throw errors or warnings if they're not  installed, here's which are needed and how to install them.

## Theme
Powerlevel10k is a theme that emphasizes speed, flexibility and out-of-the-box experience.
``` zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

## Plugins
### zsh-autosuggestions
Fish-like fast/unobtrusive autosuggestions for zsh.
``` zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### zsh-syntax-highlighting
Fish-like syntax highlighting for zsh.
``` zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Packages
### eza
A modern replacement for ls
``` zsh
pacman -S eza
```

### pywal16
Color palette generator
``` zsh
# Installed via AUR in Arch Linux
yay -S python-pywal16
```

### xclip
CLI to the X11 clipboard
Color pallete generator
``` zsh
pacman -S xclip
```

### zoxide
Smart directory jumper
``` zsh
pacman -S zoxide
```

### fuzzy finder
Command line finder
``` zsh
pacman -S fzf
```