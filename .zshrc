fastfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# # Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

# Path to Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Plugins to load (space-separated)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# ZSH Theme (optional: agnoster, powerlevel10k, etc.)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

alias start='vagrant up'
alias connect='vagrant ssh'
alias stop='vagrant halt'
alias fs='fastfetch.sh'
alias cd='z'
alias cdi='zi'
#alias fzf='fzf --preview="bat {}"'
alias fzf='fzf --preview "bat --style=numbers --color=always {}" --preview-window=right:60%'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
export VISUAL=nvim
export EDITOR=nvim
cat ~/.config/hypr/hyprlock/backup.conf > ~/.config/hypr/hyprlock/theme.conf

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
