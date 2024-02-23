export PATH="/opt/homebrew/bin/python3:$PATH"

ZSH_THEME="cloud"
export PS1='%1d$ '

# go to last working dirctory
alias priv="cd $OLDPWD"

# Go to trush folder
alias trash="~/.local/share/vifm/Trash/"

# sercices list
alias sl="service --status-all"

alias c='clear'

alias kill='sudo kill -9 $(sudo lsof -t -i:3000)'

alias e='exit'

alias rs='./mvnw spring-boot:run'

alias o='ssh ubuntu@54.90.87.142'

alias v='vim'

alias f='vifm .'

alias python='python3'

alias learn='cd Desktop/learn/ && vifm .'

alias ..='cd ..'
alias ...='cd ../..'

alias startMysqlServer='brew services start mysql'
alias stopMysqlServer='brew services stop mysql'
alias mysql='mysql -u root -p'

alias startPostgreServer='brew services start postgresql@14'
alias stopPostgreServer='brew services stop postgresql@14'
alias psql='psql -U postgres -h localhost -p 5432'

alias startMongoServer='brew services start mongodb-community'
alias stopMongoServer='brew services stop mongodb-community'
alias mongo='/opt/homebrew/bin/mongo'


# Load Angular CLI autocompletion.
source <(ng completion script)
