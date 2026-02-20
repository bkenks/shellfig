alias c='clear'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias lx="lazymux"
alias reload="exec zsh"
alias s="kitten ssh"
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias dir='dir --color=auto'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'
    alias ls='ls --color=auto'
    alias vdir='vdir --color=auto'
fi
