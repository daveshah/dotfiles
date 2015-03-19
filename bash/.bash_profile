export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1
alias ?=pwd

sublime_command="/usr/local/bin/subl"
sublime_location="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

if [ ! -L "$sublime_command" ]
then
	ln -s "$sublime_location" "$sublime_command"
fi

#A few wise words
fortune | cowsay

if [[ $(date +%u) -eq 5 ]]; 
then
	PS1="Happy Friday!\360\237\215\272 :"
fi

#/usr/local/bin comes first for homebrew
PATH=/usr/local/bin:$PATH

#Add firefox to path
PATH=/Users/daveshah/Applications/Firefox.app/Contents/MacOS:$PATH

#add Android to the path
export ANDROID_HOME=/Users/daveshah/Development/android-sdks
PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

#add node bin
PATH=$PATH:/usr/local/share/npm/bin

#Z
. `brew --prefix`/etc/profile.d/z.sh

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

pretty_print_json() {
	curl -sS $1 | python -m json.tool
}

# Setting PATH for Python 3.3
#PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
