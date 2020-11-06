#
# User configuration sourced by interactive shells
#

export ZSH_PATH="/bin/zsh"

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh



#
# User configuration sourced by interactive shells
#

export VISUAL="vim"
export VIM_BUNDLE="${HOME}/.vim/bundle"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
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
