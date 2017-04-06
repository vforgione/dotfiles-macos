# bash prompt
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# path
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# editor
export EDITOR=`which vim`

# bash history config
export HISTFILESIZE=10000

# runtime homes
export JAVA_HOME=$(/usr/libexec/java_home)
export GRADLE_HOME="/usr/local/Cellar/gradle/3.4.1/libexec"

# sources
source $HOME/Dotfiles/aliases
source $HOME/Dotfiles/git-completion.bash
source $HOME/Dotfiles/ssh-completion.bash
source $HOME/Dotfiles/pip-completion.bash
if [ -f ~/.work ] ; then source ~/.work ; fi
source $HOME/Dotfiles/bash_prompt

# pyenv
eval "$(pyenv init -)"
