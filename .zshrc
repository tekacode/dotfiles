
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ ##-s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
##if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  ##source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
##fi

# If you come from bash you might have to change your $PATH.


# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
ZSH_THEME="cloud"

plugins=(git zsh-nvm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

##export PATH="$PATH:${HOME}/flutter/bin"


##export PATH="$PATH:/Applications/apache-maven-3.6.3/bin"


##export PATH="$PATH:/usr/local/mysql/bin"

##export PATH="$PATH:/usr/local/bin/aws"
##export PATH="$PATH:/usr/local/bin/aws_completer"

# help us to open vs code from terminal using code . command 
##code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# ZSH_THEME="af-magic"
##ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.

##DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"


# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
##plugins=(git)

##source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# SSH
# to upload ssh public file to server use this(ssh-copy-id teka@objectp.com)
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# --------------------------
# TEKALEGN's ALIASES 
# --------------------------
# LINUX

# echo $PATH
# run bash file (./filename)
# go to last working dirctory


# tree -I 'folder1|folder2|test_*'

# ufw -uncomplicated firewall 
# to see permistions of applications and ports(sudo ufw status)
# to allow specific port be accessed(sudo ufw allow 3000)
# to deny specific port be accessed(sudo ufw deny 3000)
# to allow a specific application be accessed (sudo ufw allow 'Apache')

# to kill a port keeps buesy" sudo kill -9 $(sudo lsof -t -i:3000)"

# netstat:- network and static, analize network statastic, shows open ports and corsponding addresses,routingtables

# view routing tables (netstat -nr) 
# display network interface static(netstat -ai)
# show network connection(netstat -ant)
# show network services(netstat -pnltu)


# clean trash at(~/.local/share/Trash)

# use nvim instead of vim
alias vim="nvim"
# go to last working dirctory
alias priv="cd $OLDPWD"

# Go to trush folder
##alias trash="~/.local/share/vifm/Trash/"

# sercices list
##alias sl="service --status-all"

# Bind vim mode to linux
##bindkey -v

alias c='clear'

alias pd='cd $OLDPWD'

alias kill='sudo kill -9 $(sudo lsof -t -i:3000)'

alias e='exit'

alias o='ssh teka@159.65.35.124'

alias v='vim'
alias f='vifm .'

alias t='cd tutorials_git/ && vifm .'


#clean catch files

##alias cca='sudo apt-get clean;sudo apt-get autoremove --purge;sudo apt-get autoremove;'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."

# Download tar.gz files
# 1. wget "link to file"
# 2. tar xvzf file.tar.gz(install)
# 3. rm file.tar.gz

# --------------------------
# PHP

# Run any derctory into php server
# php -S localhost:8080


# Wordpress


# install wordpress(sudo wget https://wordpress.org/latest.zip)
# (unzip latest.zip)

# objectp wordpress site username: teka, passwoed: Jimma@309

# mysql database: my_wordpress_db, username: tf, password: Jimma@309


# Drupal


# install drupal(wget https://ftp.drupal.org/files/projects/drupal-8.7.3.zip)

# (unzip drupal-8.7.3.zip)

# for php extention dissabled use (sudo apt-get install php7.2-gd)

# mysql database: my_drupal_db, username: tf, password: Jimma@309

# drupal site username: teka, password:Jimma@309 

# --------------------------
# JAVA
# Maven

# To create project do the following:
#sudo mvn archetype:generate 
	#-DgroupId=com.objectp

	#-DartifactId=myMaven
	#-DinteractiveMode=false
	
# Another way to create project from maven template
# sudo mvn archetype:generate -DgroupId=com.mkyong.hashing -DartifactId=java-project -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

# To build the project
# sudo mvn package

# Spring 
# 1.go to start.spring.io to dowload mvn starter file 
# 2. go to pom.xml folder and run "mvn install" to generate mvn artifact/ target folder created
# 3.the jar file in target folder contains the compiled folder to run including tomcat
#  4. to run the jar file use the command "java -jar filename"


# --------------------------
#PYTHON

# Convert any folder to server
#python -m http.server 8080


# --------------------------
#DJANGO 
# Inside django-apps folder activate the virtual environment with the following command

# Then move in to the specific project folder and run this command. If it says no django, run this: pip3 install django
# --------------------------
# MYSQL
##alias mysql='mysql -u root -p'
# username: tf, password: Jimma@309 
# SELECT User FROM mysql.user;
# --------------------------
# POSTGRESS

# check connection \conninfo
# show databases \l
# connect to db \c dbname
# show datatables \dt
# describe table \d+ tablename
# select * from tablename
# beurify output \x on
# exit pg ctrl-d
# --------------------------
# MONGODB
# start server (mongo;)
# (use databasename;)
# see connected DB (db;)
# (show collection;)
# (show dbs;)
# create new db (use dbname)
# db.employees.insert({"name":"Teka","age":99})
# db.employees.find().pretty();
# --------------------------
# SQLITE
# to start sqlite cd to the db folder and (sqlite3 dbname)
# to see tables (.tables)
# to see the structure of a table(.schema tablename)
# to see records (select * from tablename)
# to exit (.exit)
# --------------------------
#phttp-server

#--------------------------
#ANGULAR  

# --------------------------
#REACT 
# to start server (npm start)
# --------------------------
# GOLANG

# go run myfile.go

# --------------------------

##autoload -U +X bashcompinit && bashcompinit
##complete -o nospace -C /opt/homebrew/bin/terraform terraform
# --------------------------
# TERMINAL PROMPT
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
##[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
##[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
# --------------------------
