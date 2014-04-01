source ~/.git-prompt.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR=vim

export PS1="\u@\h \w\[\033[32m\]\$(__git_ps1)\[\033[00m\]: "

alias sublime="open -a /Applications/Sublime\ Text\ 2.app" 
alias subl="open -a /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi


