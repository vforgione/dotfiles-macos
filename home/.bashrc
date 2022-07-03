##                                    ##
#  IF NOT RUNNING INTERACTIVELY, EXIT  #
##                                    ##

case $- in
  *i*) ;;
    *) return ;;
esac


##                    ##
#  ALIASES & ENV VARS  #
##                    ##

alias ll='ls -lhG'
alias lo='ls -ohG'
alias la='ll -A'

# always make parent dirs
alias mkdir='mkdir -p'

# better recursive copy
alias cpr='rsync -avr'

# history file
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# default command prompt
PS1="\w \\$ "


##                            ##
#  ENABLE COMPLETION FEATURES  #
##                            ##

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


##         ##
#  ASDF VM  #
##         ##

if command -v brew &> /dev/null; then
  [[ -f "$(brew --prefix asdf)/asdf.sh" ]] && . $(brew --prefix asdf)/asdf.sh
  [[ -f "$(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" ]] && . $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash
elif [[ -f "$HOME/.asdf/asdf.sh" ]]; then
  . $HOME/.asdf/asdf.sh
  . $HOME/.asdf/completions/asdf.bash
fi

if [[ -f "$HOME/.asdf/plugins/java/set-java-home.bash" ]]; then
  . $HOME/.asdf/plugins/java/set-java-home.bash
fi

##                 ##
#  LOCAL OVERRIDES  #
##                 ##

[[ -f $HOME/.bashrc.local ]] && source $HOME/.bashrc.local


##                         ##
#  KITTY SHELL INTEGRATION  #
##                         ##

if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then
  source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"
fi

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
