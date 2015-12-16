export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1
alias ?=pwd

source ~/.profile


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


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
