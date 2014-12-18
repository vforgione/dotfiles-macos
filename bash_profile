# bash prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 7)\]\u@\h:\w \\$ \[$(tput sgr0)\]\[$(tput sgr0)\]"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# ls shortcuts
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -ltr"


# databases
alias start_mongo="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"


## path additions
# personal bin
export PATH="~/.bin:$PATH"

# always use /usr/local/bin first
export PATH="/usr/local/bin:$PATH"

# bash history config
export HISTFILESIZE=10000


# include ~/.bash_prompt
. ~/.bash_prompt

