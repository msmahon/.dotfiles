#=========#
# EXPORTS #
#=========#

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

#========#
# PROMPT #
#========#

PS1=$'%F{8}%B»%b%f %F{11}%n%f%F{8}╺─╸%f%(?..%F{8}%B[%f%F{9}%L%f%F{8}]%f%b )%F{8}%B[%b%f%F{15}%1~%f%F{8}%B]%f%F{12};%f%b '

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

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

#==================#
# MACHINE SPECIFIC #
#==================#

[[ -f ~/.zshrc_machine ]] && source ~/.zshrc_machine

#======#
# MISC #
#======#

# Apparently this is needed after loading plugins
#source $ZSH/oh-my-zsh.sh
