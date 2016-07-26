source ~/.git-prompt.sh

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR=vim
export PS1="\[\033[1;94m\]\u\[\033[0;96m\]@\[\033[1;94m\]\h\[\033[00m\] \w\[\033[32m\]\$(__git_ps1)\[\033[00m\]: "

alias ls='ls -GFh'
alias sublime="open -a /Applications/Sublime\ Text\ 2.app"
alias subl="open -a /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
alias json='python -mjson.tool'

command_exists () {
    type "$1" &> /dev/null;
}
# source: http://stackoverflow.com/a/3931779
if command_exists brew && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="/Users/shuan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups

# Append to history when shell exits
shopt -s histappend

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
