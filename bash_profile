# bash prompt
export PS1="\u@\h:\w \$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# ls shortcuts
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -ltr"


# databases
alias start_mongo="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"

# virtualenv python 3
alias venv3="virtualenv -p python3"
alias goto_env=". ~/.bin/goto-env.sh"


## path additions
# personal bin
export PATH="~/.bin:$PATH"

# always use /usr/local/bin first
export PATH="/usr/local/bin:$PATH"

# bash history config
export HISTFILESIZE=10000

