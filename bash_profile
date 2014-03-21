# bash prompt
export PS1="\u@\h:\w \$ "
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


# ls shortcuts
alias ll="ls -l"
alias la="ls -al"
alias lt="ls -ltr"


# ruby stuff
source '/usr/local/share/chruby/chruby.sh'
source '/usr/local/share/chruby/auto.sh'
chruby 1.9
alias ber="bundle exec rails"
alias bec="bundle exec cap"


## path additions
# postgres
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# mysql
export PATH="/usr/local/mysql/bin:$PATH"

# sbin
export PATH="/usr/local/sbin:$PATH"

# personal bin
export PATH="~/.bin:$PATH"

# heroku toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# always use /usr/local/bin first
export PATH="/usr/local/bin:$PATH"


# bash history config
export HISTFILESIZE=10000


# import .sensitive
source ~/.sensitive

