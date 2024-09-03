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
export PATH="$HOME/.local/bin:$PATH"

# switch to mvim
alias vim='nvim'

# set vim as default editor
export EDITOR=vim
export VISUAL="$EDITOR"

# git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

# aliases
alias dd='sudo dd status=progress'

alias pip='python3 -m "pip"'
alias python='python3'

alias tarczf='function _tarczf() { tar cf - "$2" | pv -s $(($(du -sk "$2" | awk "{print \$1}") * 1024)) | pigz > "$1"; }; _tarczf'
alias tarxzf='function _tarxzf() { pv -s $(($(du -sk "$1" | awk "{print \$1}") * 1024)) < "$1" | pigz -dc | tar xzf - -C "$2"; }; _tarxzf'

alias tf='terraform'

alias vim='nvim'

alias virtualenv='python3 -m venv'

# docker
alias select-container="export CONTAINER=\$(docker ps -a | grep -v CONTAINER | fzf | cut -d \" \" -f 1)" # TODO: make it display currently selected container (maybe using tmux.conf?)
alias select-active-container="export CONTAINER=\$(docker ps | grep -v CONTAINER | fzf | cut -d \" \" -f 1)" # TODO: make it display currently selected container (maybe using tmux.conf?)
alias remove-image="(docker images | grep -v REPOSITORY | fzf | tr -s ' ' | cut -d ' ' -f 3) | xargs docker image rm "
alias remove-buildx-cache="docker builder prune --filter type=exec.cachemount"
alias buildkit-docker-build="DOCKER_BUILDKIT=1 docker build"

# GPRC
source ~/.gprc


# SDKMAN! 
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source <(fzf --zsh)

# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
}
