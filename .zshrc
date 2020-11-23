#
# User configuration sourced by interactive shells
#

export ZSH_PATH="/bin/zsh"

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

#
# User configuration sourced by interactive shells
#

export VISUAL="vim"
export VIM_BUNDLE="${HOME}/.vim/bundle"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
alias l="ls -lh"
alias copy="xclip -selection clipboard"
alias garcH="git archive -o latest.tar.gz HEAD"
source ~/.shrc
source ~/.omzgit
export ZSH_AUTOSUGGEST_USE_ASYNC=1
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh



# Concerning vmware shared folder
export SHARED_PATH="${HOME}/shares"
alias mount_shared="vmhgfs-fuse .host:/ ${SHARED_PATH} -o subtype=vmhgfs-fuse,allow_other"

export PYTHONPATH="${SHARED_PATH}/projects/2001160BOS/trunk/test/uds/basic-framework/"

alias cansend="noglob cansend"
alias disable_proxy="unset http_proxy; unset https_proxy"

export GHIDRA_INSTALL_DIR="/home/nbusser/ghidra_9.1.2_PUBLIC"
alias ghidra="${GHIDRA_INSTALL_DIR}/ghidraRun"

alias fix_vmware="systemctl restart vmtoolsd.service"

alias sameboy="${HOME}/tools/SameBoy/build/bin/SDL/sameboy"

