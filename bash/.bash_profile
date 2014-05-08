export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1
alias ?=pwd

sublime_command="/usr/local/bin/subl"
sublime_location="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

if [ ! -L "$sublime_command" ]
then
	ln -s "$sublime_location" "$sublime_command"
fi

#PS1="\360\237\215\272 :"

#/usr/local/bin comes first for homebrew
PATH=/usr/local/bin:$PATH

#add Android to the path
export ANDROID_HOME=/Users/daveshah/Development/android-sdks
PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/19.0.1

#add Play Framework
PATH=$PATH:/Users/daveshah/Development/play-framework/play-2.2.2

#add node bin
PATH=$PATH:/usr/local/share/npm/bin

#Z
. `brew --prefix`/etc/profile.d/z.sh

eclipse() {
	open /Applications/eclipse/Eclipse.app
}

start_postgres() {
	postgres -D /usr/local/var/postgres
}

scalagen() {
	~/.dotfiles/bash/scalagen.sh
}

start_mysql() {
	mysql.server start
}

stop_mysql() {
	mysql.server stop 
}

# Setting PATH for Python 3.3
#PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
