#
#autojump
export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export TOMCAT_HOME=/usr/local/tomcat/apache-tomcat-6.0.35

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias tomcat=$TOMCAT_HOME/bin/catalina.sh

starttomcat() {
	tomcat start
}

stoptomcat() {
	tomcat stop
}

debugtomcat() {
	tomcat jpda start
}
