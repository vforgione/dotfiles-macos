#!/bin/sh

function _pushd() {
  pushd $0 &> /dev/null
}

function _popd() {
  popd $0 &> /dev/null
}

_pushd $(dirname "$0")
here=$(pwd)
_popd

set -- .config .local .ssh .gitconfig .zshrc Brewfile

for df in "$@"
do
  echo working on $here/home/$df
  if [ -d $HOME/$df ] || [ -e $HOME/$df ] || [ -L $HOME/$df ]
  then
    echo $HOME/$df already exists
    printf "making backup ... "
    mv $HOME/$df $HOME/$df.bak
    echo done
    printf "making symlink ... "
    ln -s $here/home/$df $HOME/$df
    echo done
  else
    echo $HOME/$df does not exist
    printf "making symlink ... "
    ln -s $here/home/$df $HOME/$df
    echo done
  fi
  echo
done

for font in $(ls $here/fonts)
do
  printf "copying $font to user fonts dir ... "
  cp $here/fonts/$font $HOME/Library/Fonts
  echo done
done
