#Personal Aliases
alias ll='ls -FGlAhp'
alias myip='curl ipecho.net/plain ; echo'

# bash prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[01;37m\]\$\[\033[00m\] "

# Added for rbenv:
eval "$(rbenv init -)"

# Added per 'brew doctor' warning:
export PATH="/usr/local/sbin:$PATH"

# Added for pyenv:
eval "$(pyenv init -)"

# Adds pesonal /bin folder to $PATH
PATH=$PATH:$HOME/bin

# Sets command line to use Vim:
set -o vi
