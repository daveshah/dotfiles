# Path to your oh-my-zsh installation.
export ZSH=/Users/dshah/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="wezm" - this one was cool but flaky

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"


# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby)

# User configuration

export PATH=$PATH:"/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
export EDITOR=/usr/bin/vim

#Added RVM in .zshenv as outlined here: http://rvm.io/integration/vim
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="~/bin:$PATH"

#funcs
for file in ~/.dotfiles/bin/func/*.sh; do source $file; done

#AutoJump (j)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Z (it's the new j yo)
. /usr/local/etc/profile.d/z.sh

#Aliai
alias g=git
alias remotes='cd /Volumes'
alias v='vim'
alias c='clear'
alias be='bundle exec'
alias t='tmux'
alias e='emacs'
alias rspec_pg='USE_PG=true bundle exec rspec'

#Because ssh-add ~/.ssh/id_rsa over and over again for deployment became pretty annoying
ssh-add -L &> /dev/null
if [ $? -eq 1 ]; then
  ssh-add
fi

# LOCAL DEV ONLY 
export PG_USER=dshah
export PG_PASSWORD=""

# Ugh... this was the only way I could get CB to install rmagick.
# found here: https://github.com/rmagick-temp/rmagick/issues/39#issuecomment-285574962
# brew install imagemagick@6
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/imagemagick@6/lib/pkgconfig
#export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/imagemagick@6/lib/pkgconfig

# added by travis gem
[ -f /Users/dshah/.travis/travis.sh ] && source /Users/dshah/.travis/travis.sh

function reset_cache() {
   sudo killall -HUP mDNSResponder
}

# Runs specs multiple times
# Usage: rspec_alot 2 spec/to_run_spec.rb
function rspec_alot() {
    for i in `seq $1` ; do rspec $2 ; [[ ! $? = 0 ]] && break ; done
}

function sir_mix_alot() {
    for i in `seq $1` ; do mix test $2 ; [[ ! $? = 0 ]] && break ; done
}

# CMM platform dev shtuff
# replace ~/dev with the path to your platform/dev checkout
shovel() ( cd ~/dev && ./script/run shovel "$@"; )
alias de='docker exec -e COLUMNS="$(tput cols)" -e LINES="$(tput lines)" -ti'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Command}}\t{{.Image}}"'
# End CMM platform dev shtuff


function run_uncommitted() {
    git status | grep spec | cut -d " " -f4 - | xargs bundle exec rspec
}

#Below needed to get imagemagick to install for CB
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/imagemagick@6/lib/pkgconfig:$PKG_CONFIG_PATH"

alias did="vim +'normal go' +'r!date' ~/did.txt"
alias learning="vim +'normal go' +'r!date' learned.txt"
source /usr/local/opt/asdf/asdf.sh

function docker_cleanup() {
  docker volume rm $(/usr/local/bin/docker volume ls -f dangling=true -q)
  docker rmi $(docker images -f dangling=true -q)
}
