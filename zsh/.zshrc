## starship
eval "$(starship init zsh)"

## plugin
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## zsh suges conf
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

setopt inc_append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space

##
export EDITOR="nvim"

##  zsh syntax conf
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white'

## shell integration
if [[ -n "$KITTY_INSTALLATION_DIR" ]]; then
    export KITTY_SHELL_INTEGRATION="enabled no-cursor"
    source "$KITTY_INSTALLATION_DIR/shell-integration/zsh/kitty-integration"
fi

precmd() {
  precmd() {
    echo
  }
}
