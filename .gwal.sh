#!/bin/zsh

# Path to wallpaper
WALLPAPER_PATH="$1"

# Check if the path is provided
if [ -z "$WALLPAPER_PATH" ]; then
	echo "Usage: $0 [path to wallpaper]"
	exit 1
fi

# Set the wallpaper using gsettings
# gsettings set org.gnome.desktop.background picture-uri "file://$WALLPAPER_PATH"

# Set the wallpaper using dconf
dconf write /org/gnome/desktop/background/picture-uri "'file://$WALLPAPER_PATH'"

# Set the colorscheme using pywal (16-color fork)
wal -i $WALLPAPER_PATH

