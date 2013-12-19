# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"

PS1='\[\e[0;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;33m\]\$ \[\e[m\]\[\e[0;37m\]'

alias ls='ls --color=auto'

