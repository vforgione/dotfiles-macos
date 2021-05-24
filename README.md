# Vince's macOS Dotfiles

<small>
  Clone at your own peril.<br>
  You've been warned... o(-`д´- ｡)
</small>

## Installation

```bash
$ git clone git@github.com:vforgione/dotfiles-macos.git ~/Dotfiles
$ cd ~/Dotfiles
$ open fonts/Fira\ Code\ Retina\ Nerd\ Font\ Complete\ Mono.ttf
$ cd home
$ for x in `ls -A`; do 
  [[ -x $HOME/$x ]] && mv $HOME/$x $HOME/$x.bak;
  ln -s ~/Dotfiles/home/$x ~/$x;
done
```

