.DEFAULT_GOAL = all

path = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

~/.gitconfig:
	ln -fs $(path)/gitconfig ~/.gitconfig

~/.vim:
	ln -fs $(path)/vim ~/.vim

~/.vimrc:
	ln -fs $(path)/vimrc ~/.vimrc

~/.zshrc:
	ln -fs $(path)/zshrc ~/.zshrc

git: ~/.gitconfig
vim: ~/.vim
vimrc: ~/.vimrc
zshrc: ~/.zshrc

all: git vim vimrc zshrc
