

#
# User configuration sourced by interactive shells
#

export VISUAL="vim"

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
alias l="ls -lh"
alias garcH="git archive -o latest.tar.gz HEAD"
source ~/.shrc
source ~/.omzgit
