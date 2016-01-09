# Path to your oh-my-zsh installation.
export ZSH=/Users/shah/.oh-my-zsh

#Because VIM all the things!
bindkey -v

ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
FIREFOX=/opt/homebrew-cask/Caskroom/firefox/41.0.1/Firefox.app/Contents/MacOS

export EDITOR=/usr/bin/vim
export PATH=$PATH:"/Users/shah/.rvm/gems/ruby-2.2.2/bin:/Users/shah/.rvm/gems/ruby-2.2.2@global/bin:/Users/shah/.rvm/rubies/ruby-2.2.2/bin:/Users/shah/.rvm/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/daveshah/Development/android-sdks/platform-tools:/Users/daveshah/Development/android-sdks/tools:/usr/local/share/npm/bin:/Users/shah/.dotfiles/bin"

export PATH=$PATH:$FIREFOX
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:"~/.dotfiles/bin"

source $ZSH/oh-my-zsh.sh

#Pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

#AutoJump (j)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

#HomeBrews
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

#Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#VirtualEnvWrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

#GO Stuff!
for file in ~/go/*.sh; do source $file; done

#funcs
for file in ~/.dotfiles/bin/func/*.sh; do source $file; done

#Aliai
alias g=git
alias remotes='cd /Volumes'
alias v='vim'


export NVM_DIR="/Users/shah/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
