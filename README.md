# Vince's macOS Dotfiles

Clone at your own peril.  
You've been warned... o(-`д´- ｡)

## Installation

```shell
git clone git@github.com:vforgione/dotfiles-macos.git ~/Dotfiles
cd ~/Dotfiles

open fonts/Fira\ Code\ Retina\ Nerd\ Font\ Complete\ Mono.ttf
open fonts/Fira\ Code\ Retina\ Nerd\ Font\ Complete.ttf

cd home
for x in `ls -A`; do 
  [[ -x $HOME/$x ]] && mv $HOME/$x $HOME/$x.bak;
  ln -s ~/Dotfiles/home/$x ~/$x;
done
```
