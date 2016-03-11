export ZSH=/Users/vince/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(git brew vagrant docker)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

export GOPATH="$HOME/Workspace/golang"

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
<<<<<<< HEAD

docker_running=`docker-machine ls | grep tcp`
if [ "$docker_running" ]; then eval "$(docker-machine env default)"; fi

if [ -f ~/.work ] ; then source ~/.work ; fi
