

#
# User configuration sourced by interactive shells
#

export VISUAL="vim"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
alias l="ls -lh"
source ~/.shrc
source ~/.omzgit
