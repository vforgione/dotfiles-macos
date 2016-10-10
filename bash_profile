# bash prompt
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# editor
export EDITOR=`which vim`

# bash history config
export HISTFILESIZE=10000

# sources
source $HOME/Dotfiles/aliases
source $HOME/Dotfiles/git-completion.bash
source $HOME/Dotfiles/pip-completion.bash
if [ -f ~/.work ] ; then source ~/.work ; fi
source $HOME/Dotfiles/bash_prompt
