#!/bin/bash

echo "installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
xcode-select --install

echo ""
echo "installing git"
brew install git

echo ""
echo "cloning dotfiles"
git clone git@github.com:vforgione/dotfiles-macos.git ~/Dotfiles

echo ""
echo "installing brew apps"
cat ~/Dotfiles/brew.txt | xargs brew install

echo ""
echo "symlinking app configs"
ln -s ~/Dotfiles/bash_profile ~/.bash_profile
ln -s ~/Dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/inputrc ~/.inputrc
ln -s ~/Dotfiles/vimrc ~/.vimrc
