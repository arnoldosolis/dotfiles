#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi='nvim'
alias enw='emacs -nw'

export PATH="~/.emacs.d/bin:$PATH"

PS1='[\u@\h \W]\$ '
