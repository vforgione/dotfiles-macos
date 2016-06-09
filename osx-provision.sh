#!/bin/bash

echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "installing brew apps"
brew install ack brew-cask curl git htop-osx libyaml node openssl python python3 ruby tree vim wget xz

echo "installing brew cask apps"
brew cask install iterm2 spectacle sublime-text3 vagrant vagrant-manager virtualbox

echo "installing pip apps"
pip install -U pip ansible virtualenv

echo "cloning dotfiles"
cd ~
git clone https://github.com/vforgione/dotfiles.git Dotfiles

echo "installing custom font"
open ~/Dotfiles/Inconsolata\ for\ Powerline.otf

echo "symlinking rc's"
ln -s ~/Dotfiles/aliases ~/.aliases
ln -s ~/Dotfiles/gemrc ~/.gemrc
ln -s ~/Dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/inputrc ~/.inputrc
ln -s ~/Dotfiles/vimrc ~/.vimrc
ln -s ~/Dotfiles/bash_profile ~/.bash_profile

echo "generating new rsa key for machine"
mkdir ~/.ssh
cd ~/.ssh
ssh-keygen -t rsa -b 4096
echo "don't forget to add this to github"

echo "downloading pycharm - you'll have to manually install it"
open "https://www.jetbrains.com/pycharm/download/"

echo "downloading transmission - you'll have to manually install it"
wget "http://download.transmissionbt.com/files/Transmission-2.84.dmg"
