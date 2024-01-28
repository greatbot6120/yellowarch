# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# End of lines configured by zsh-newuser-install
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.config/zsh/aliases

#LS_COLORS
export LS_COLORS="di=30;103:"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#export PATH=$PATH:$HOME/.local/bin

# customized afetch with my nickname :)
afetch

# custom nvim entry
vi() {
  
  nvim "$1" -c "Neotree filesystem reveal left"

}
