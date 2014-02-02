# bash prompt
export PS1="\u@\h:\w \$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# ls shortcuts
alias ll="ls -l"
alias la="ls -al"


# ruby stuff
source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'
chruby 1.9


## path additions
# postgres
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# sbin
export PATH="/usr/local/sbin:$PATH"

# always use /usr/local/bin first
export PATH="/usr/local/bin:$PATH"


# bash history config
export HISTFILESIZE=2000


# import .sensitive
source ~/.sensitive
