# export vars
export EDITOR=`which vim`
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GPG_TTY=$(tty)

# aliases
alias ll="ls -lh"
alias la="ls -alh"

# source additional configs
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

. $HOME/Dotfiles/bash_prompt

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
