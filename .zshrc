#Opening Stuff
fortune | cowsay

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# fzf on Manjaro
if [ -x "$(command -v fzf)"  ]
then
    source /usr/share/fzf/key-bindings.zsh
fi

alias vim="nvim"
#alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export PATH=$PATH:$VIMCONFIG/pack/bundle/start/fzf/bin

# FZF ignore gitignore files with ripgrep
export FZF_DEFAULT_COMMAND='rg --files'

# Rebinding capslock
setxkbmap -option ctrl:nocaps
