.DEFAULT_GOAL = all

~/.gitconfig:
	ln -fs gitconfig ~/.gitconfig

~/.vim:
	ln -fs vim ~/.vim

~/.vimrc:
	ln -fs vimrc ~/.vimrc

~/.zshrc:
	ln -fs zshrc ~/.zshrc

git: ~/.gitconfig
vim: ~/.vim
vimrc: ~/.vimrc
zshrc: ~/.zshrc

all: git vim vimrc zshrc
