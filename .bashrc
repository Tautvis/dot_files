PS1='\[\e[0;32m\]\h\[\e[0m\]:-/[\e[0;34m\]\W\[\e[0m\]\$ '


DOT_PATH=~/dot_files


# use colors by default if possible
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=always'
    alias fgrep='fgrep --color=always'
    alias egrep='egrep --color=always'
fi


[ -f $DOT_PATH/.git_completion.sh ] && . $DOT_PATH/.git_completion.sh

# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."