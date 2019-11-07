#!/bin/sh
# /etc/profile.d/custom_prompt.sh
export PROMPT_COMMAND='export PS1="\[\e[36m\][management]\[\e[m\]\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'
