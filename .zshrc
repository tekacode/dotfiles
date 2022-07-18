
# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="cloud"

plugins=(git zsh-nvm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:${HOME}/flutter/bin"

export PATH="$PATH:/Applications/apache-maven-3.6.3/bin"

export PATH="$PATH:/usr/local/mysql/bin"

export PATH="$PATH:/usr/local/bin/aws"
export PATH="$PATH:/usr/local/bin/aws_completer"

# help us to open vs code from terminal using code . command 
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# ZSH_THEME="af-magic"

DISABLE_AUTO_UPDATE="true"

plugins=(git)


alias vim="nvim"
# go to last working dirctory
alias priv="cd $OLDPWD"

# Go to trush folder
alias trash="~/.local/share/vifm/Trash/"

# sercices list
alias sl="service --status-all"

# Bind vim mode to linux
bindkey -v

alias c='clear'

alias kill='sudo kill -9 $(sudo lsof -t -i:3000)'

alias e='exit'

alias o='ssh ubuntu@3.80.43.254'

alias v='vim'
alias f='vifm .'

alias t='cd tutorials_git/ && vifm .'


#clean catch files

alias cca='sudo apt-get clean;sudo apt-get autoremove --purge;sudo apt-get autoremove;'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

alias mysql='mysql -u root -p'

