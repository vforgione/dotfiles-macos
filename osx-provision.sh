#!/bin/bash

echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "installing brew-cask and git"
brew install git

echo "cloning dotfiles"
git clone https://github.com/vforgione/dotfiles.git ~/Dotfiles

echo "installing brew apps"
cat ~/Dotfiles/brew.txt | xargs brew install

echo "installing brew cask apps"
cat ~/Dotfiles/brew-cask.txt | xargs brew-cask install

echo "installing pip apps"
pip install -r ~/Dotfiles/system-pip.txt

echo "installing custom font"
open ~/Dotfiles/Inconsolata\ for\ Powerline.otf

echo "symlinking rc's"
ln -s ~/Dotfiles/bash_profile ~/.bash_profile
ln -s ~/Dotfiles/gemrc ~/.gemrc
ln -s ~/Dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/inputrc ~/.inputrc
ln -s ~/Dotfiles/vimrc ~/.vimrc

echo "generating new rsa key for machine"
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4096
echo "don't forget to add this to github"
