#config
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
### Adjusting for HiDPI
* in your .Xresources file adjust Xft.dpi according to your display
    * Default for me on Huawei Matebook X Pro was 96, now set to 196

### Installing Firefox developer edition
* Download firefox developer edition here
    * https://www.mozilla.org/en-US/firefox/developer/
* Extract using: tar -xvf firefox-*.tar.bz2
* Move the extracted files using: mv /home/{USERNAME}/Downloads/firefox /opt
* Create a link for the binary file: ln -s /opt/firefox/firefox /usr/local/bin/firefox
* Firefox with I3: popups must be set to open in floating mode
    * in config file: for_window [window_role="About"] floating enable

### Audio on Manjaro
* Install pulseaudio and pulse-audio via pacman
* Firefox requires pulseaudio

### I3 
* Installing i3-gaps-rounded:
    * Uninstall manjaro-i3
    * install i3-gaps-rounded from the aur
    * set border_radius 20 in i3 config

### Compton
* set inactive windows to dim

### Alacritty
* in .config/alacritty/alacritty.yml
* grab config files from git repo
* Current theme: molokai pro

### ZSH
1. Installing zsh: sudo pacman -S zsh
2. Installing oh-my-zsh:
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
3. Installing Antigen for zsh plugin management:
    curl -L git.io/antigen > antigen.zsh
4. I've moved antigen.zsh into .config/antigen
5. .zshrc sources the antigen.zsh as well as theme.zsh which styles the prompt


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
-----
* With ZSH and oh-my-zsh ensure to use antigen properly
* Learn your package manager(s) and use them properly
* Fix indentation in vimrc and clean out unnecessary pluginsA
* Clean up coc.nvim setup
* Organize zshrc better
* Figure out why nvim didn't work with COC
* Learn to redirect configurations to a single location for configs.
* Convert vimwiki files to .md files
* Try building up neovim from scratch with your existing vimrc.
