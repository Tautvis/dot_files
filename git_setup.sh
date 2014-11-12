#!/bin/bash

# set up git config
if [ ! -z $(command -v git)]; then
	git config --global user.name "Tautvydas Misiunas"
	git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
	git config --global alias.st "status"
	git config --global push.default "current"
fi
