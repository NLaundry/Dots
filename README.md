# config
A collection of configuration files and instructions.

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
#### Styling firefox
* enable userChrome css:
    * navigate to about:config and enable toolkit.legacyUserProfileCustomizations.stylesheets
    * add the chrome file from config to ~/.mozilla/firefox/{userName}/chrome

### Audio on Manjaro
* Install pulseaudio and pulse-audio via pacman
* Firefox requires pulseaudio

### I3 
* Installing i3-gaps-rounded:
    * Uninstall manjaro-i3
    * install i3-gaps-rounded from the aur
    * set border_radius 20 in i3 config
* Setting spacebar as the mod key
    * install xcape via yay or pacman
    * add the .Xmodmap file to the home directory
    * edit the .profile file in the home directory

### Rofi setup
* Install: *sudo pacman -S rofi

### Setting up polybar
* font awesome
    * install fonts: sudo pacman -S ttf-font-awesome
* Polybar is configured to run on startup with i3
* Polybar currently displays:
    * CPU usage
    * Ram usage
    * Wifi with clickable connection manager
    * Active window
    * I3 workspaces
    * brightness with on scroll changes
    * volume with pavucontrol (wanna change this cause its ugly)
    * Battery display
    * date
### Installing flameshot for screenshots
* sudo pacman -S flameshot
    * In the i3 config this is mapped to print screen
### Compton
* set inactive windows to dim
### GTK theme
* installed both oomox for creating schemes + kde gtk configurator
* apply Equilux in the gtk-3.0 settings.ini
### Alacritty
* in .config/alacritty/alacritty.yml
* grab config files from git repo
* Current theme: molokai pro
### Music: mopidy + spotify + ncmpcpp
* mopidy: sudo pip install mopidy 
* spotify plugin: sudo pip install mopidy-spotify
* ncmpcpp: sudo pacman -S ncmpcpp
* configuring mopidy and spotify:
    * add username + password in ~/.config/mopidy/mopidy.conf
    * validate mopidy via spotify (this can be done on the mopidy plugins wiki)
    * insert the client id and secret into the config file
* configure ~/.ncmpcpp/config
    * mpd_host "localhost"
    * mpd_port "6600"
* Current setup:
    * alias music="mopidy &; disown; ncmpcpp;"
### ZSH
1. Installing zsh: sudo pacman -S zsh
2. Installing oh-my-zsh:
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
3. Installing Antigen for zsh plugin management:
    curl -L git.io/antigen > antigen.zsh
4. I've moved antigen.zsh into .config/antigen
5. .zshrc sources the antigen.zsh as well as theme.zsh which styles the prompt
### useful programs
* Zathura for pdf and epub viewing:
    * sudo pacman -S zathura zathura-pdf-mupdf
* Icons in terminal + ls-icons
    * $ git clone https://github.com/sebastiencs/icons-in-terminal.git
    * run ./install.sh
    * test with ./print_icons.sh
    * git clone https://github.com/sebastiencs/ls-icons.git
    * yay gperf, $ ./bootstrap
    * $ export CFLAGS=-DNO_TRUE_COLOURS=1 # Execute this line _only_ if your terminal doesn't support true colours
    * $ export CC=clang CXX=clang++
    * $ ./configure --prefix=/opt/coreutils
    * $ make
    * $ make install
    * $ /opt/coreutils/bin/lsinsall from extra

#### If you're unfortunate enough to use windows
* Install the new windows terminal and ubuntu subsystem
* Install chocolatey as the windows package manager
* Live in this terminal to save you from the perils of windows
* We use this cause the ubuntu repo for antigen has an incomplete version of antigen.zsh
* sudo curl -o /usr/share/zsh-antigen/antigen.zsh -sL git.io/antigen
* install powerline fonts for sweet terminal icons: sudo YOUR_PPM install fonts-powerline
* install nerd fonts for dev-icons: sudo scoop install RobotoMono-Nf
* chocolatey/scoop for windows (ppms for windows)
* install fluid-terminal to use these fonts on windows
