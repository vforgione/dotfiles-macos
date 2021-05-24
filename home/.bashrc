# if not running interactively, exit
case $- in
  *i*) ;;
    *) return ;;
esac


##              ##
#  HISTORY FILE  #
##              ##

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000


##                            ##
#  ENABLE COMPLETION FEATURES  #
##                            ##

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


##         ##
#  ALIASES  #
##         ##

# cat -> bat
alias cat='bat'

# ll/a -> lsd
alias lsd='lsd --date "+%Y-%m-%d %H:%M:%S" --size short'
alias ll='lsd -lh'
alias la='lsd -lhA'

# mkdir
alias mkdir='mkdir -p'

# cp
alias cpdir='rsync -avr'

# vim
alias vim='nvim'


##         ##
#  EXPORTS  #
##         ##

# set nvim as the default editor
_nvimpath=$(command -v nvim)
[[ "${_nvimpath}" != "" ]] && export EDITOR=$_nvimpath
unset _nvimpath

# set a default ps1
PS1="\w \\$ "

##         ##
#  ASDF VM  #
##         ##

[[ -f "$(brew --prefix asdf)/asdf.sh" ]] && . $(brew --prefix asdf)/asdf.sh
[[ -f "$(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" ]] && . $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash

##                 ##
#  LOCAL OVERRIDES  #
##                 ##

[[ -f $HOME/.bashrc.local ]] && source $HOME/.bashrc.local
