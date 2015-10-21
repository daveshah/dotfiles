# Path to your oh-my-zsh installation.
export ZSH=/Users/shah/.oh-my-zsh

#Because VIM all the things!
bindkey -v


# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
#
#
FIREFOX=/opt/homebrew-cask/Caskroom/firefox/41.0.1/Firefox.app/Contents/MacOS

export PATH=$PATH:"/Users/shah/.rvm/gems/ruby-2.2.2/bin:/Users/shah/.rvm/gems/ruby-2.2.2@global/bin:/Users/shah/.rvm/rubies/ruby-2.2.2/bin:/Users/shah/.rvm/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/daveshah/Development/android-sdks/platform-tools:/Users/daveshah/Development/android-sdks/tools:/usr/local/share/npm/bin:/Users/shah/.dotfiles/bin"
# export MANPATH="/usr/local/man:$MANPATH"
#
export PATH=$PATH:$FIREFOX
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:"~/.dotfiles/bin"

source $ZSH/oh-my-zsh.sh

alias remotes='cd /Volumes'

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

alias g=git

#GO Stuff!
for file in ~/go/*.sh; do source $file; done

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

export EDITOR=/usr/bin/vim
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128M"

function setjdk() {
  if [ $# -ne 0 ]; then
	removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	if [ -n "${JAVA_HOME+x}" ]; then
	removeFromPath $JAVA_HOME
	fi
	export JAVA_HOME=`/usr/libexec/java_home -v $@`
	export PATH=$JAVA_HOME/bin:$PATH
	fi
}
setjdk 1.8

function removeFromPath() {
   export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}


function apache_ds_hack() {
	sudo launchctl unload /Library/LaunchDaemons/org.apache.directory.server.plist
	sudo rm /usr/local/apacheds-2.0.0-M15/instances/default/run/apacheds-default.pid
	sudo launchctl load /Library/LaunchDaemons/org.apache.directory.server.plist
}

#Pythonage
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

