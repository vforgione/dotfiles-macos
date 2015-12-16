export ZSH=/Users/vince/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git brew vagrant)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export GOPATH="$HOME/Workspace/golang"

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
