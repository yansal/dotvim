#!/bin/sh -eu

dotvimdir=$(dirname "$0")
ln -fs "$dotvimdir/vimrc" ~/.vimrc

checkout() {
	repo=$1
	path=$2
	branch=$3
	if [ ! -d "$path/.git" ]
	then
		git clone -q "$repo" "$path"
	else
		git -C "$path" fetch -q
	fi
	git -C "$path" checkout -q "$branch"
}

checkout https://github.com/tpope/vim-pathogen ~/.vim master
checkout https://github.com/tpope/vim-sensible ~/.vim/bundle/vim-sensible master
checkout https://github.com/fatih/vim-go ~/.vim/bundle/vim-go v1.20
