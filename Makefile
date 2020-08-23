.DEFAULT_GOAL = all

path = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

~/.gitconfig:
	ln -fs $(path)gitconfig ~/.gitconfig

~/diff-so-fancy:
	ln -fs $(path)diff-so-fancy ~/.diff-so-fancy

~/.vim:
	ln -fs $(path)vim ~/.vim

~/.vimrc:
	ln -fs $(path)vimrc ~/.vimrc

~/.zshrc:
	ln -fs $(path)zshrc ~/.zshrc

~/.oh-my-zsh:
	ln -fs $(path)oh-my-zsh ~/.oh-my-zsh

git: ~/.gitconfig
vim: ~/.vim
vimrc: ~/.vimrc
zshrc: ~/.zshrc
ohmyzsh: ~/.oh-my-zsh
diff: ~/diff-so-fancy

all: git vim vimrc zshrc ohmyzsh diff
