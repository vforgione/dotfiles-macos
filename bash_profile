# prompt
PS1="\\u@\\h \\w \\$ "

# path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.bin"

# editor
export EDITOR=/usr/bin/vim

# sources
source $HOME/.aliases
if [ -f ~/.work ] ; then source ~/.work ; fi
