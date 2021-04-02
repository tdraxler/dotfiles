#!/bin/bash

echo Installing configuration files...

# Copy dotfiles to the correct directories
cp .vimrc ~/
cp .tmux.conf ~/

# Install plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install zsh and oh my zsh
echo Installing zsh
sudo apt install zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp .zshrc ~/

# The next line is copied from powerline/fonts on github
# It installs some fonts that are compatible with powerline

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Create Alacritty configuration file
mkdir --parents ~/.config/alacritty
cp alacritty.yml ~/.config/alacritty

echo Finished!
