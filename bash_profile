# bash prompt
export PS1="\u@\h:\w \$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# ls shortcuts
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -ltr"


# vagrant shortcuts
alias vvup="vagrant up"
alias vvprovision="vagrant provision"
alias vvssh="vagrant ssh"
alias vvhalt="vagrant halt"
alias vvdestroy="vagrant destroy"


# databases
alias start_mongo="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"
alias start_influx="influxdb -config=/usr/local/etc/influxdb.conf"


# ssh tab completion
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh


## path
# personal bin
export PATH="~/.bin:$PATH"

# always use /usr/local/bin first
export PATH="/usr/local/bin:$PATH"

# bash history config
export HISTFILESIZE=10000

