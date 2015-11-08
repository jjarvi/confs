# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

reset=$(tput sgr0)
red=$(tput setaf 1)
blue=$(tput setaf 4)
green=$(tput setaf 2)
PS1='\[$green\]\u@\h\[$reset\] \[$blue\]\w\[$reset\] \[$green\]\$ \[$reset\]'

alias ls='ls --color=auto'
alias l='ls -l'
alias la='ls -la'

