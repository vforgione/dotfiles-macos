# bash prompt
export PS1="\u@\h \[\033[1;97m\]\w\[\033[0m\] \$ "

# path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# editor
export EDITOR=`which vim`

# bash history config
export HISTFILESIZE=10000

# sources
source $HOME/Dotfiles/aliases
source $HOME/Dotfiles/git-completion.bash
if [ -f ~/.work ] ; then source ~/.work ; fi
source $HOME/Dotfiles/bash_prompt
