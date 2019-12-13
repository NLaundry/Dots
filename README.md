# config
A collection of configuration files and instructions.

## If you're unfortunate enough to use windows
* Install the new windows terminal and ubuntu subsystem
* Install chocolatey as the windows package manager
* Live in this terminal to save you from the perils of windows
* We use this cause the ubuntu repo for antigen has an incomplete version of antigen.zsh
* sudo curl -o /usr/share/zsh-antigen/antigen.zsh -sL git.io/antigen

## prerequisites
nodejs
npm
install powerline fonts for sweet terminal icons: sudo YOUR_PPM install fonts-powerline
install nerd fonts for dev-icons: sudo scoop install RobotoMono-Nf
chocolatey/scoop for windows (ppms for windows)
install fluid-terminal to use these fonts on windows

## ZSH
install ZSH and then Oh-my-zsh
to install external plugins:
    clone into ~/.oh-my-zsh/custom/plugins or themes
external oh-my-zsh plugins:
    zsh-syntax-highlighting: git clone https://github.com/zsh-users/zsh-syntax-highlighting
    zsh-autosuggestions: git clone https://github.com/zsh-users/zsh-autosuggestions
Theme:    
    Powerlevel9k: git clone https://github.com/bhilburn/powerlevek9k.git ~/.oh-my-zsh/custom/themes/powerlevek9k

## Setup for New machine

Mandatory Features
-----------------
1. Terminal setup
    * Use ZSH with oh-my-zsh
    * Alacritty for that sweet sweet gpu acceleration
    * powerline fonts
    * nerd fonts
    * bat: cat but with style
    * tig: git with an ncurses interface
2. Vim config is largely self contained.
    * Coc is essential for useful autocompletions and intellisense
    * Plug as plugin manager
3. Tmux
    * If I move to a tiling window manager this may be largely unnecessary
    * The config is pretty minimal and in git repo
4. I3
    * This is going to take some planning

Notes
----
* With ZSH and oh-my-zsh ensure to use antigen properly
* Learn your package manager(s) and use them properly
* Fix indentation in vimrc and clean out unnecessary pluginsA
* Clean up coc.nvim setup
* Organize zshrc better
* Figure out why nvim didn't work with COC
* Learn to redirect configurations to a single location for configs.
* Convert vimwiki files to .md files
* Try building up neovim from scratch with your existing vimrc.
