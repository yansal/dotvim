#!/bin/sh -eu

dotvim_dir=$(dirname "$0")
ln -fs "$dotvim_dir/vimrc" ~/.vimrc

checkout() {
	repo=$1
	path=$2
	if [ ! -d "$path/.git" ]
	then
		git clone -q "$repo" "$path"
	else
		(cd "$path"; git fetch && git reset -q --hard)
	fi
}

checkout https://github.com/tpope/vim-pathogen ~/.vim
checkout https://github.com/tpope/vim-sensible ~/.vim/bundle/vim-sensible
checkout https://github.com/fatih/vim-go ~/.vim/bundle/vim-go
checkout https://github.com/rhysd/vim-clang-format ~/.vim/bundle/vim-clang-format
