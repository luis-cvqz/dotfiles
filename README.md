# dotfiles

Repository for my dotfiles version control

## Pre-requisites

Make sure the following is installed

### Stow
```
pacman -S stow
```

### Git
```
pacman -S git
```

## Usage
Clone the repository in the $HOME directory
``` sh
> git clone git@github.com:luis-cvqz/dotfiles.git
> cd dotfiles
```
Then stow all over the place
``` sh
# This repository's directory disposition is designed so you can stow individual dotfiles and not all at the same time
# (Be aware that some may have dependencies between them)
> stow zsh # For a single dotfile
> stow zsh kitty hyprland bash # For multiple dotfiles
```


**Credits**
<br>Repository created following this short YouTube guide:

[Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
