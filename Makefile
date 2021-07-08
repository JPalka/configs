.DEFAULT_GOAL = all

path = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

~/.gitconfig:
	ln -fsb $(path)gitconfig ~/.gitconfig

~/diff-so-fancy:
	ln -fsb $(path)diff-so-fancy ~/diff-so-fancy

~/.vim:
	ln -fsb $(path)vim ~/.vim

~/.vimrc:
	ln -fsb $(path)vimrc ~/.vimrc

~/zsh_alias.sh:
	ln -fsb $(path)zsh_alias.sh ~/zsh_alias.sh

~/.zshrc: ~/zsh_alias.sh
	ln -fsb $(path)zshrc ~/.zshrc

~/.oh-my-zsh:
	ln -fsb $(path)oh-my-zsh ~/.oh-my-zsh

~/.tmux.conf:
	ln -fsb $(path)tmux.conf ~/.tmux.conf

~/.gitignore:
	ln -fsb $(path)gitignore ~/.gitignore

~/.vim_backup:
	ln -fsb $(path)vim_backup ~/.vim_backup

~/.fonts:
	ln -fsb $(path)fonts ~/.fonts

git: ~/.gitconfig ~/.gitignore
vim: ~/.vim ~/.vim_backup
vimrc: ~/.vimrc
zshrc: ~/.zshrc
ohmyzsh: ~/.oh-my-zsh
diff: ~/diff-so-fancy
tmux: ~/.tmux.conf
fonts: ~/.fonts
regolith:
	ln -fsb $(path)Xresources-regolith ~/.Xresources-regolith
	ln -fsb $(path)regolith ~/.config/regolith
	ln -fsb $(path)timewarrior ~/.timewarrior
	ln -fsb $(path)scripts ~/scripts

all: git vim vimrc zshrc ohmyzsh diff tmux fonts
