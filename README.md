#   dotfiles-yellow-arch

<img src="https://github.com/greatbot6120/yellowarch/blob/branchino-er-criminale/screenshots/example.png">

> Credits to **Bubbo**, head of branch-naming-design of this project

##  Table of contents

*   [Shit to do](#shit-to-do)
*   [Projects to do](#projects-to-do)
*   [Dependencies and various programs](#dependencies-and-various-programs)
*   [Notes](#notes)

---

###  Shit to do:

- [ ] env variables (`$HYPERCTL_EXIT_CODE`, etc...) for scripts  
- [x] zsh completion 
- [ ] fix file structure accordingly
- [ ] `wf-recorder` script
- [x] check various dependencies
- [ ] source entire hyprl configuration
    - [x] bindings
    - [ ] variables
    - [ ] windowrules
    - [ ] startup
- [x] overall theme
- [x] zsh prompt, configuration of p10k
- [x] nvim
- [x] ~~joshuto~~ switched to ranger  
- [x] ~~write my own fetch~~ yoinked the source from [here](https://github.com/13-CF/afetch.git)
- [x] finish to configure `kitty.conf`
    - [x] fix conflicting colors (gray in the VCS status module of powerlevel10k and issue with `LS_COLORS` remap)   
        *   fixed commenting yellow and green colors in `Adapta.conf`      
    - [x] colorscheme
    - [x] active & non-active dims (maybe with `hyprland.conf`? I'll se the kitty-wiki...)
- [x] firefox custom `.css` I'm tired of all that bloat-UI up there, want a minimal interface maybe only the search bar
    - [ ] adjust colors in the `.css` files 
- [x] main aliases
- [x] binds for volume 
- [ ] major shell scripts that do my personal shit
    -  [ ] `initial-setup` working, gotta automate it with socket events
- [ ] make list of dependencies for the main install script
- [ ] ~~custom spotify (spicetify)~~ I left Spotify for ethical reasons, I'm using [Tidal](https://tidal.com/) now

###  Projects to do:

- [ ] script for the PAT (personal access token)
- [x] ~~script for manipulating the brightness to add in `hyprland.conf`~~ added binds using `brightnessctl`
- [ ] custom wofi like Spotlight on macOS and make it scripable:
    > I wanna make a wofi interface similar to the Spotlight tool in macOS and make it like a minimal search engine for my commonly used websites. I also wanna create a menu that displays my main config files and automatically launch nvim to edit them if I select them. Other utilities will be added here if any. Image reference:
    
    <img src="https://github.com/greatbot6120/yellowarch/blob/branchino-er-criminale/images/spotlight.png">

###  Dependencies and various programs

```txt
# pacman -Qe

acpi 1.7-4
alsa-utils 1.2.13-2
amd-ucode 20241111.b5885ec5-1
base 3-2
base-devel 1-2
bemenu 0.6.23-1
brightnessctl 0.5.1-3
exfat-utils 1.4.0-3
feh 3.10.3-1
firefox 133.0-1
fontforge 20230101-4
git 2.47.1-1
highlight 4.14-1
hyprland 0.45.2-3
hyprpaper 0.7.1-3
hyprshot 1.3.0-1
kitty 0.37.0-1
linux 6.12.1.arch1-1
linux-firmware 20241111.b5885ec5-1
man-db 2.13.0-1
man-pages 6.9.1-1
mpv 1:0.39.0-4
neovim 0.10.2-2
networkmanager 1.50.0-1
npm 10.9.2-1
pavucontrol 1:6.1-1
pipewire-pulse 1:1.2.7-1
playerctl 2.4.1-4
poppler 24.11.0-2
python-pillow 11.0.0-1
ranger 1.9.4-1
refind 0.14.2-1
stow 2.4.1-1
telegram-desktop 5.9.0-1
texinfo 7.1.1-1
tree 2.1.3-1
unzip 6.0-21
vim 9.1.0866-1
wev 1.0.0-13
wf-recorder 0.5.0-2
wl-gammarelay-rs 0.4.1-1
yay 12.4.2-1
yay-debug 12.4.2-1
zathura 0.5.8-1
zsh 5.9-5
zsh-theme-powerlevel10k-git r4304.ef83e13c-1

```

```sh
# powerlevel10k
yay -S --noconfirm zsh-theme-powerlevel10k-git

# nerd-fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh
```

###  Notes

*   Upgraded to kitty, maintaining the terminator config just in case (they're the same with the maps too)
*   For the first time i mapped shutdown and reboot commands (better late than ever)
*   Custom `.css` for firefox that I found was ugly as fuck, maintaining the stock theme for now
*   Lowkey wanna switch to d-menu
*   Applied some global binds
*   Neovim configured and Installed some plugins like [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim), [lazy](https://github.com/folke/lazy.nvim) and [telescope](https://github.com/nvim-telescope/telescope.nvim)
