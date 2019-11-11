# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nlaundry/.oh-my-zsh"

#Power level content {
  ########################
  # Antigen
  ########################
  source ~/sideProjects/config/antigen.zsh 
  antigen use oh-my-zsh
  antigen bundle StackExchange/blackbox
  antigen bundle brew
  antigen bundle command-not-found
  antigen bundle common-aliases
  antigen bundle docker
  antigen bundle docker-compose
  antigen bundle git
  antigen bundle golang
  antigen bundle npm
  antigen bundle nvm
  antigen bundle python
  antigen bundle tmux
  antigen theme bhilburn/powerlevel9k powerlevel9k
  antigen apply

  POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
  POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
  
  POWERLEVEL9K_DIR_BACKGROUND='237'
  POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
  POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
  POWERLEVEL9K_DIR_FOREGROUND='010'
  POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
  POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
  POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
  POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"

  POWERLEVEL9K_DIR_ETC_BACKGROUND="clear"
  POWERLEVEL9K_ETC_ICON='%F{blue}\uf423'
  POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
  POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"

  POWERLEVEL9K_GO_ICON="\uf7b7"
  POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
  POWERLEVEL9K_GO_VERSION_FOREGROUND='081'

  POWERLEVEL9K_HOME_ICON="\ufb26"

  POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined)
  POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf460%F{008}'

  POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
  POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "

  POWERLEVEL9K_MODE='nerdfont-complete'

  POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
  POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \uf101 "

  POWERLEVEL9K_NVM_BACKGROUND='clear'
  POWERLEVEL9K_NVM_FOREGROUND='green'

  POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
  POWERLEVEL9K_OS_ICON_FOREGROUND='cyan'

  POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
  POWERLEVEL9K_PROMPT_ON_NEWLINE=true

  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vi_mode)
  POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
  POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'

  POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'

  POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
  POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
  POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
  POWERLEVEL9K_STATUS_BACKGROUND="clear"
  POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"

  POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"

  POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
  POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
  POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
  POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
  POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
  POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'
#}
# Powerline theme similar to airline for vim
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#
#
plugins=(git wd zsh-autosuggestions zsh-syntax-highlighting vi-mode)


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey '^ ' autosuggest-accept
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/nlaundry/.sdkman"
[[ -s "/home/nlaundry/.sdkman/bin/sdkman-init.sh" ]] && source "/home/nlaundry/.sdkman/bin/sdkman-init.sh"
