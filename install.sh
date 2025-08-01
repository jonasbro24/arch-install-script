#!/usr/bin/env bash

# Gets the directory of the script
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Setting locale right
echo "de_DE.UTF-8" | sudo tee -a /etc/locale.gen
sudo locale-gen

# Install yay
cd $HOME
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm
cd ..
sudo rm -r yay

# Create .config Folder if it does not exits already
mkdir -p $HOME/.config

# Create symlinks for dotfiles
ln -s $SCRIPT_DIR/dotfiles/hypr $HOME/.config
ln -s $SCRIPT_DIR/dotfiles/walker $HOME/.config
ln -s $SCRIPT_DIR/dotfiles/waybar $HOME/.config
ln -s $SCRIPT_DIR/dotfiles/alacritty $HOME/.config
ln -s $SCRIPT_DIR/dotfiles/nvim $HOME/.config
ln -s $SCRIPT_DIR/dotfiles/starship.toml $HOME/.config
ln -s $SCRIPT_DIR/dotfiles.bashrc $HOME

# Install programs

# Firefox
sudo pacman -S --noconfirm --needed firefox

# Alacritty
sudo pacman -S --noconfirm --needed alacritty

# Window Management
sudo pacman -S --noconfirm --needed hyprland
sudo pacman -S --noconfirm --needed hyprpaper
sudo pacman -S --noconfirm --needed waybar
sudo pacman -S --noconfirm --needed kitty
sudo pacman -S --noconfirm --needed wtype
yay -S --noconfirm --needed walker-bin

# Other
sudo pacman -S --noconfirm --needed obsidian

# Zsh
sudo pacman -S --noconfirm --needed zsh
chsh -s /usr/bin/zsh

# Starship Prompt
sudo pacman -S --noconfirm --needed starship

# Bob with Neovim (When version 0.12 is released I should probably change that)
sudo pacman -S --noconfirm --needed bob
bob use nightly




