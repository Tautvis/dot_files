PS1='\[\e[0;32m\]\h\[\e[0m\]:-/[\e[0;34m\]\W\[\e[0m\]\$ '


DOT_PATH=~/dot_files




if [ -f $DOT_PATH/.git_completion.sh ] && $DOT_PATH/.git_completion.sh

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