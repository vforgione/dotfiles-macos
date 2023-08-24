# set options

setopt auto_cd
setopt no_case_glob

# path configs

typeset -U path PATH

[[ -d ~/.local/bin ]] && path=(~/.local/bin $path)

export PATH


# tab completion

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

autoload bashcompinit && bashcompinit


# command history

setopt extended_history
setopt share_history
setopt append_history
setopt inc_append_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_reduce_blanks

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=5000
HISTSIZE=2000


# env vars

if command -v nvim &> /dev/null; then
    export EDITOR='nvim'
elif command -v vim &> /dev/null; then
    export EDITOR='vim'
elif command -v vi &> /dev/null; then
    export EDITOR='vi'
fi

export VIRTUAL_ENV_DISABLE_PROMPT=1


# aliases

alias -g ll='ls -lhG'
alias -g lo='ls -ohG'
alias -g la='ll -A'


# prompt config

setopt prompt_subst

autoload -Uz promptinit && promptinit
autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats " [%b]"

precmd() {
    vcs_info
}

_venv() { [ $VIRTUAL_ENV ] && echo "$(basename $VIRTUAL_ENV) "; }

PROMPT='
$(_venv)%F{cyan}%~%f${vcs_info_msg_0_} %B%#%b '


# local override

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
