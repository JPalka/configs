.DEFAULT_GOAL = all

git: ~/.gitconfig
	ln -fs gitconfig ~/.gitconfig

vim: ~/.vim
	ln -fs vim ~/.vim

vimrc: ~/.vimrc
	ln -fs vimrc ~/.vimrc

zshrc: ~/.zshrc
	ln -fs zshrc ~/.zshrc

all:
	git vim vimrc zshrc
