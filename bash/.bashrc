#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -al --color=auto'
PS1='[\u@\h \W]\$ '

source /usr/share/nvm/init-nvm.sh
