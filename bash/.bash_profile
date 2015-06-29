export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1
alias ?=pwd

source dnvm.sh
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

sublime_command="/usr/local/bin/subl"
sublime_location="/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"

#JAVA_HOME fix on OSX
export JAVA_HOME=$(/usr/libexec/java_home)

if [ ! -L "$sublime_command" ]
then
	ln -s "$sublime_location" "$sublime_command"
fi

if [[ $(date +%u) -eq 5 ]]; 
then
	PS1="Happy Friday!\360\237\215\272 :"
fi

export EDITOR=/usr/bin/vim

#/usr/local/bin comes first for homebrew
PATH=/usr/local/bin:$PATH

#add Android to the path
export ANDROID_HOME=/Users/daveshah/Development/android-sdks
PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

#add node bin
PATH=$PATH:/usr/local/share/npm/bin

export DOT_FILE_DIR=$HOME/.dotfiles

#Z
. `brew --prefix`/etc/profile.d/z.sh

start_postgres() {
	postgres -D /usr/local/var/postgres
}

adb() {
	$ANDROID_HOME/platform-tools/adb "$@" | $DOT_FILE_DIR/bash/logcat_colors.sh
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

pretty_print_json_string() {
	echo $1 | python -m json.tool 
}

# Setting PATH for Python 3.3
#PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
