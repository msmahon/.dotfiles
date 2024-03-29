#========#
# PROMPT #
#========#

[ -z "$PS1" ] && return

_PROMPT() {
    _EXIT_STATUS=$?
    [ $_EXIT_STATUS != 0 ] && _EXIT_STATUS_STR="\[\033[1;30m\][\[\033[1;31m\]$_EXIT_STATUS\[\033[1;30m\]] "
    PS1="\[\033[1;30m\]» \[\e[0;33m\]mitchell\[\033[1;30m\]╺─╸$_EXIT_STATUS_STR\[\033[1;30m\][\[\033[0m\]\W\[\033[1;30m\]]\[\033[1;34m\];\[\033[0m\] "
    unset _EXIT_STATUS_STR
}

PROMPT_COMMAND=_PROMPT

#=========#
# ALIASES #
#=========#

# Shortcuts
alias ll="ls -la"

# Syntax highlight cat
alias cat="bat"

#===========#
# FUNCTIONS #
#===========#

# Jump to specific dotfiles
function config { cd ~/.dotfiles/"$1"; }


#=====#
# FZF #
#=====#

[[ -f ~/.fzf.bash ]] && source ~/.fzf.bash
#[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh


# Source machine-specific bash configs
[[ -f ~/.bashrc_machine ]] && source ~/.bashrc_machine
