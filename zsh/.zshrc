export ELECTRON_OZONE_PLATFORM_HINT=auto

checkTTY(){
    CHECK_TTY=$(tty | awk -F"/" '{print "/" $2 "/" $3 "/"}');
    GUI_STR='/dev/pts/';
 
    if [ "$CHECK_TTY" = "$GUI_STR" ]; then
        source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme;
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh;
    fi
}

checkTTY;

# autocomplete
autoload -U compinit;
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=nvim

# custom scripts
export PATH="/home/greatbot/.config/scripts:$PATH"

# End of lines configured by zsh-newuser-install
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
source $HOME/.config/zsh/aliases

#LS_COLORS
#export LS_COLORS="di=30;103:"

#export PATH=$PATH:$HOME/.local/bin

# customized afetch with my nickname :)
#afetch

# custom nvim entry
svi(){
  sudoedit "$1"
}

vi(){
  nvim "$1" -c "Neotree filesystem reveal left"
}

#export BEMENU_OPTS='--prompt "Search >" --fn "JetBrainsMono Nerd Font 6.5"'
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config//zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
