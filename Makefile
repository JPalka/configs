.DEFAULT_GOAL = all

git:
	ln -fs gitconfig ~/.gitconfig

vim:
	ln -fs vim ~/.vim

vimrc:
	ln -fs vimrc ~/.vimrc

zshrc:
	ln -fs zshrc ~/.zshrc

all: git vim vimrc zshrc
