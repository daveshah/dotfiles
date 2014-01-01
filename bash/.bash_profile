#add Android to the path
export ANDROID_HOME=/Users/daveshah/Development/android-sdks
PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools/17.0.0

#add Corona SDK to the path
PATH=$PATH:/Applications/CoronaSDK

#add Play Framework
PATH=$PATH:/Users/daveshah/Development/play-framework/play-2.1.3

#add node bin
PATH=$PATH:/usr/local/share/npm/bin

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=1

#Z
. `brew --prefix`/etc/profile.d/z.sh
#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


eclipse() {
	open /Applications/eclipse/Eclipse.app
}

start_postgres() {
	postgres -D /usr/local/var/postgres
}

# Setting PATH for Python 3.3
#PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
#export PATH
#export PATH=/usr/local/bin:/Library/Frameworks/Python.framework/Versions/3.3/bin:/Users/daveshah/.rvm/gems/ruby-1.9.3-p286/bin:/Users/daveshah/.rvm/gems/ruby-1.9.3-p286@global/bin:/Users/daveshah/.rvm/rubies/ruby-1.9.3-p286/bin:/Users/daveshah/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/daveshah/Development/android-sdks/platform-tools:/Users/daveshah/Development/android-sdks/tools:/Users/daveshah/Development/android-sdks/build-tools/17.0.0:/Applications/CoronaSDK:/Users/daveshah/Development/play-framework/play-2.1.3
