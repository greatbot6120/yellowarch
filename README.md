#   dotfiles-yellow-arch

<img src="https://github.com/greatbot6120/yellowarch/blob/branchino-er-criminale/screenshots/example.png">

> Credits to **Bubbo**, head of branch-naming-design of this project

This is my dotfiles archive for my silly little yellow themed arch. I'm not deeply passionate about the yellow color but I only like the wallpaper that's in the `./wallpapers` folder so...

##  Shit to do:

- [x] overall theme, it is kinda inconsistent rn (yellow too bright)
- [x] zsh prompt, configuration of p10k
- [x] nvim
- [ ] joshuto  
- [ ] ~~write my own fetch~~ yoinked the source from [here](https://github.com/13-CF/afetch.git) lmaooo
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
- [ ] make list of dependencies for the main install script
- [ ] ~~custom spotify (spicetify)~~ I left Spotify for ethical reasons, I'm using [Tidal](https://tidal.com/) now

##  Projects to do:

- [ ] script for the PAT (personal access token)
- [ ] script for manipulating the brightness to add in `hyprland.conf`
- [ ] custom wofi like Spotlight on macOS and make it scripable:
    > I wanna make a wofi interface similar to the Spotlight tool in macOS and make it like a minimal search engine for my commonly used websites. I also wanna create a menu that displays my main config files and automatically launch nvim to edit them if I select them. Other utilities will be added here if any. Image reference:
    
    <img src="https://github.com/greatbot6120/yellowarch/blob/branchino-er-criminale/images/spotlight.png">

##  Dependencies and various programs (`pacman -Qe, yay -Qe and git repos`)

```txt
// pacman -Qe
alsa-utils
evince
exfat-utils
feh
firefox
git
grub
hyprland
hyprpaper
hyprshot
intel-ucode
kitty
man-db
man-pages
mupdf
neovim
networkmanager
obs-studio
pavu-control
puddletag
pulseaudio
pulseaudio-jack
qbittorrent
speedtest-cli
sudo
telegram-desktop
tree
vlc
wireplumber
wofi
xdg-desktop-portal-hyprland
yay
zsh
```

```sh
# powerlevel10k
$ yay -S --noconfirm zsh-theme-powerlevel10k-git

# nerd-fonts
$ git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
$ cd nerd-fonts
$ ./install.sh JetBrainsMono # and other fonts if I want
```

##  Notes / Updates

*   Upgraded to kitty, maintaining the terminator config just in case (they're the same with the maps too)
*   For the first time i mapped shutdown and reboot commands (better late than ever)
*   Custom `.css` for firefox that I found was ugly as fuck, maintaining the stock theme for now
*   Lowkey wanna switch to d-menu
*   Applied some global binds
*   Neovim configured and Installed some plugins like [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim), [lazy](https://github.com/folke/lazy.nvim) and [telescope](https://github.com/nvim-telescope/telescope.nvim)
