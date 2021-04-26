.DEFAULT_GOAL = all

path = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

~/.gitconfig:
	ln -fs $(path)gitconfig ~/.gitconfig

~/diff-so-fancy:
	ln -fs $(path)diff-so-fancy ~/diff-so-fancy

~/.vim:
	ln -fs $(path)vim ~/.vim

~/.vimrc:
	ln -fs $(path)vimrc ~/.vimrc

~/zsh_alias.sh:
	ln -fs $(path)zsh_alias.sh ~/zsh_alias.sh

~/.zshrc: ~/zsh_alias.sh
	ln -fs $(path)zshrc ~/.zshrc

~/.oh-my-zsh:
	ln -fs $(path)oh-my-zsh ~/.oh-my-zsh

~/.tmux.conf:
	ln -fs $(path)tmux.conf ~/.tmux.conf

~/.gitignore:
	ln -fs $(path)gitignore ~/.gitignore

~/.vim_backup:
	ln -fs $(path)vim_backup ~/.vim_backup

~/.fonts:
	ln -fs $(path)fonts ~/.fonts

git: ~/.gitconfig ~/.gitignore
vim: ~/.vim ~/.vim_backup
vimrc: ~/.vimrc
zshrc: ~/.zshrc
ohmyzsh: ~/.oh-my-zsh
diff: ~/diff-so-fancy
tmux: ~/.tmux.conf
fonts: ~/.fonts
regolith:
	ln -fs $(path)Xresources-regolith ~/.Xresources-regolith

all: git vim vimrc zshrc ohmyzsh diff tmux fonts
