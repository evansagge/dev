export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

DEFAULT_USER='esagge'

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby bundler gem tmux argcomplete)

autoload -U zmv

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

## Usage: compresspdf [input file] [output file] [screen*|ebook|printer|prepress]
compresspdf() {
    /usr/local/bin/gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/${3:-"screen"} -dCompatibilityLevel=1.4 -sOutputFile="$2" "$1"
}


export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:$PATH"
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:$HOME/.local/bin
export EDITOR='nvim'
export TMUX_POWERLINE_SEG_WEATHER_LOCATION=12765846
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export RUBYOPT="-W0"
export SHABU_REPO=~/code/venmo/shabu
export ATLAS_TOKEN="cFlcB4vtyuOXQw.atlasv1.5Fk5tfeZbN8LyQ1v3gzWHoWfQrkCy8gsDwpXpSU3sBbl9UAS6bYgMfTS0HLwZfXxRAo"
export KEYTIMEOUT=1
export POWERLINE_COMMAND=powerline
export POWERLINE_REPOSITORY_ROOT='/usr/local/lib/python2.7/site-packages'

alias chromium='open -a Chromium --args --disable-web-security'
alias gitclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias vim='nvim'

source ~/.zsh/bindkey.zsh
source ~/.zsh/venmo.zsh
source /usr/local/bin/virtualenvwrapper.sh
# source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -s "/Users/esagge/.scm_breeze/scm_breeze.sh" ] && source "/Users/esagge/.scm_breeze/scm_breeze.sh"


