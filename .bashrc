PS1='\[\e[0;32m\]\h\[\e[0m\]:-/\[\e[0;34m\]\W\[\e[0m\$\] '


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

alias gti=git

alias pipupdate='pip freeze | cut -d= -f1 | pip install -U -r /dev/stdin'

# tmux shorcuts
tmux_attach(){
  tmux attach -t $1
}
alias tt=tmux_attach

# conda env
cenv(){
	current_dir=`pwd`
	while [ `pwd` != "/" ]; do
		if [ -d ".git" ]; then 
			source activate $(basename $(pwd))
			break
		fi
		cd ..
	done
	[ `pwd` != '/' ] || echo "Could not find any git repo root to match conda environment."
	cd $current_dir
}

# Google cloud
export PATH=$PATH:~/prog/google-cloud-sdk/bin
export CLOUDSDK_PYTHON=/usr/local/bin/python

# iterate over folders and add bin directories to the path
for bin_dir in /package_root/*/bin; do export PATH=$bin_dir:$PATH; done
