# Environment Variables
export MODULAR_HOME="$HOME/.modular"
export PATH="/opt/homebrew/bin/python3:$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="$HOME/.console-ninja/.bin:$PATH"

# ZSH Configuration
ZSH_THEME="cloud"
export PS1='%1~$ '  # Shows current directory in the prompt

# Aliases
alias priv="cd $OLDPWD"
alias trash="cd ~/.local/share/vifm/Trash/"  # Corrected to ensure alias works
alias sl="service --status-all"
alias c='clear'
alias kill='sudo kill -9 $(sudo lsof -t -i:3000)'
alias e='exit'
alias rs='./mvnw spring-boot:run'
alias o='ssh ubuntu@54.90.87.142'
alias v='vim'
alias f='vifm .'
alias python='python3'
alias learn='cd ~/Desktop/learn/ && vifm .'
alias ..='cd ..'
alias ...='cd ../..'

# Functions for Services
service_mysql() {
    if [ "$1" = "start" ]; then
        brew services start mysql
    elif [ "$1" = "stop" ]; then
        brew services stop mysql
    else
        echo "Usage: service_mysql start|stop"
    fi
}

service_postgres() {
    if [ "$1" = "start" ]; then
        brew services start postgresql@14
    elif [ "$1" = "stop" ]; then
        brew services stop postgresql@14
    else
        echo "Usage: service_postgres start|stop"
    fi
}

service_mongo() {
    if [ "$1" = "start" ]; then
        brew services start mongodb-community
    elif [ "$1" = "stop" ]; then
        brew services stop mongodb-community
    else
        echo "Usage: service_mongo start|stop"
    fi
}

# Angular CLI Autocompletion
if command -v ng > /dev/null; then
    source <(ng completion script)
fi

# Custom Theme for Prompt
# If you want more customization, consider using a prompt framework or different themes.

# Load Plugins if using Oh My Zsh or other plugin managers
# source $ZSH/oh-my-zsh.sh
