#!/bin/bash

echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
xcode-select --install

echo ""
echo "installing brew-cask and git"
brew install git

echo ""
echo "cloning dotfiles"
git clone https://github.com/vforgione/dotfiles.git ~/Dotfiles

echo ""
echo "installing brew apps"
cat ~/Dotfiles/brew.txt | xargs brew install

echo ""
echo "installing brew cask apps"
cat ~/Dotfiles/brew-cask.txt | xargs brew cask install

echo ""
echo "installing python versions"
pyenv install 2.7.12
pyenv install 3.4.6
pyenv install 3.5.3
pyenv install 3.6.0

echo ""
echo "installing pip apps"
wget https://bootstrap.pypa.io/get-pip.py ~/Desktop/get-pip.py
python ~/Desktop/get-pip.py
pip install -r ~/Dotfiles/system-pip.txt

echo ""
echo "installing custom font"
open ~/Dotfiles/Inconsolata\ for\ Powerline.otf

echo ""
echo "symlinking app configs"
ln -s ~/Dotfiles/bash_profile ~/.bash_profile
ln -s ~/Dotfiles/gemrc ~/.gemrc
ln -s ~/Dotfiles/gitconfig ~/.gitconfig
ln -s ~/Dotfiles/inputrc ~/.inputrc
ln -s ~/Dotfiles/vimrc ~/.vimrc

echo ""
echo "TODO:"
echo "  - generate new rsa key for machine"
echo "  - generate new gpg key for machine"
echo "  - add those keys to gitconfig and github"
echo "  - setup iterm to to use local plist file and install color pallettes"
echo "  - install jetbrains software"
