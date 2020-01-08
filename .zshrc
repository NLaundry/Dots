export ZSH="/home/nathan/.oh-my-zsh"

source ~/.config/antigen/antigen.zsh
source ~/.config/antigen/theme.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle wd
antigen bundle vi-mode
antigen bundle common-aliases

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

#antigen theme bhilburn/powerlevel9k powerlevel9k
antigen theme romkatv/powerlevel10k
antigen apply


# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
 DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

#Aliases
alias vim='nvim'
alias vi='nvim'
alias music='mopidy &; disown; echo "Starting mpd"'
alias player='ncmpcpp'
alias slack='slackadaisical'
alias disc='cordless'
alias fb='fb-messenger-cli'
alias facebook='fb-messenger-cli'
alias dock='~/dock.sh'
alias undock='~/undock.sh'
alias yoink='git pull'
alias yikes='git commit'
alias yeet='git push'
alias yank='git clone' 
alias wassup='git status'
alias yikes!='git commit'
alias yoink!='git pull'
alias yeet!='git push'
alias yank!='git clone' 
export TERMINAL='alacritty'
#sets auto suggest accept to ctrl space
bindkey '^ ' autosuggest-accept
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
