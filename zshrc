export ZSH=/Users/vince/.oh-my-zsh

ZSH_THEME="agnoster"

CASE_SENSITIVE="false"

plugins=(osx git brew)

export PATH="/Users/vince/.rbenv/shims:/usr/local/bin:~/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

alias ll="ls -l"
alias la="ls -al"
alias lt="ls -ltr"

alias vvup="vagrant up"
alias vvprovision="vagrant provision"
alias vvssh="vagrant ssh"
alias vvhalt="vagrant halt"
alias vvdestroy="vagrant destroy"

alias start_mongo="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"
alias start_influx="influxdb -config=/usr/local/etc/influxdb.conf"

export PATH="~/.bin:$PATH"

export PATH="/usr/local/bin:$PATH"

export HISTFILESIZE=10000

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

