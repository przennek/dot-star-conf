### OMZ ###
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="fishy"
zstyle ':omz:update' mode auto # update automatically without asking
zstyle ':omz:update' frequency 13 #  how often to auto-update (in days).

plugins=(git)
source $ZSH/oh-my-zsh.sh

### Customs ###

# PATH
export PATH=/opt/homebrew/bin/:$PATH
export PATH="$HOME/bin:$PATH"

# switch to mvim
alias vim='nvim'

# set vim as default editor
export EDITOR=vim
export VISUAL="$EDITOR"

# git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

# aliases
alias dd='sudo dd status=progress'

alias pip='python -m "pip"'

alias tarczf='function _tarczf() { tar cf - "$2" | pv -s $(($(du -sk "$2" | awk "{print \$1}") * 1024)) | pigz > "$1"; }; _tarczf'
alias tarxzf='function _tarxzf() { pv -s $(($(du -sk "$1" | awk "{print \$1}") * 1024)) < "$1" | pigz -dc | tar xzf - -C "$2"; }; _tarxzf'

# SDKMAN! 
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
