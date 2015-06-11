source ~/.git-prompt.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR=vim

export PS1="\u@\h \w\[\033[32m\]\$(__git_ps1)\[\033[00m\]: "

alias sublime="open -a /Applications/Sublime\ Text\ 2.app" 
alias subl="open -a /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias json='python -mjson.tool'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias git-own="git blame --line-porcelain -w --minimal -- $1 | grep \"committer \" | sed \"s/committer //g\" | sort | uniq -c | awk 'BEGIN{i=0;r=0;}{s[r]=\$1;i+=\$1;\$1=\"\";n[r]=\$0;r++}END{ for (r in s) printf \"%0.2f%% %s\\n\", s[r]/i*100, n[r]};' | sort -rn;"

[ -s "/Users/shuanwang/.nvm/nvm.sh" ] && . "/Users/shuanwang/.nvm/nvm.sh" # This loads nvm

shopt -s histappend
export PROMPT_COMMAND="${PROMPT_COMMAND};history -a; history -n"
