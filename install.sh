#!/bin/sh -ex

DIR=$(dirname "$0")
cp "$DIR"/vimrc ~/.vimrc

rm -fr ~/.vim
git clone https://github.com/tpope/vim-pathogen ~/.vim
mkdir -p ~/.vim/bundle && cd ~/.vim/bundle
git clone https://github.com/tpope/vim-sensible
git clone https://github.com/fatih/vim-go
git clone https://github.com/rhysd/vim-clang-format
git clone https://github.com/rust-lang/rust.vim
