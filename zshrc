GREEN="$(tput setaf 34)"
BLUE="$(tput setaf 32)"
RESET="$(tput sgr0)"

if [[ $SHLVL -eq 1 ]]; then
    print -P "${GREEN} ________________"
    print -P "\/\\\               \\"
    print -P "\\\_|              |"
    print -P "  |  ${BLUE}Do it now!${GREEN}  |"
    print -P "  |   ___________|_"
    print -P "   \\\_\/_____________\/${RESET}"
    echo
fi

if [[ $SHLVL -eq 2 ]]; then
    echo
    fortune -a | boxes -d parchment
    echo
fi

#if [[ $SHLVL -eq 1 ]] || [[ $SHLVL -eq 2 ]]; then
#   echo
#   print -P "\e[1;32m Welcome to: \e[1;34m%m"
#   print -P "\e[1;32m Running: \e[1;34m`uname -srm`\e[1;32m on \e[1;34m%l"
#   print -P "\e[1;32m It is:\e[1;34m %D{%r} \e[1;32m on \e[1;34m%D{%A %b %f %G}"
#   echo
#fi

# Path to your oh-my-zsh installation.
  export ZSH=/home/mbtamuli/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="crunch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(docker)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export PATH="$HOME/.Android/sdk/platform-tools:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias h="unset HISTFILE"
alias allupdate="sudo apt-get update && sudo apt-fast upgrade -y && sudo apt-fast dist-upgrade -y"
function_sp () {
    curl -F "sprunge=@${1:--}" http://sprunge.us
}
alias spaste=function_sp
alias techfreak="ssh -p 443 mbtamuli@www.techfreak.ga"
alias bshell="ssh -p 443 mbtamuli12@ssh.blinkenshell.org"
alias afi="sudo apt-fast -y install"
alias ppa="sudo add-apt-repository -y"
alias tmux="tmux -u new -s$USER"
alias create_ap="cd ~/.create_ap && sudo ./create_ap --driver nl80211 wlxc46e1f189960 wlo1 lalala wifi1234"
alias mplayer="mplayer -msgcolor -msgmodule -nolirc"

#########################
##      Vagrant       ###
#########################
alias up="vagrant up"
alias down="vagrant halt"
alias des="vagrant destroy"
alias vssh="vagrant ssh"
alias re="vagrant reload"

source /usr/local/bin/z.sh

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

DEFAULT_USER="mbtamuli"

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
