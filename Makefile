.DEFAULT_GOAL = all

path = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

~/.gitconfig:
	ln -fsb $(path)gitconfig ~/.gitconfig

~/.vim:
	ln -fsb $(path)vim ~/.vim

~/.vimrc:
	ln -fsb $(path)vimrc ~/.vimrc

~/zsh_alias.sh:
	ln -fsb $(path)zsh_alias.sh ~/zsh_alias.sh

~/.zshrc: ~/zsh_alias.sh
	ln -fsb $(path)zshrc ~/.zshrc
	ln -fsb $(path)zshrc ~/.zshenv

~/.tmux.conf:
	ln -fsb $(path)tmux.conf ~/.tmux.conf

~/.gitignore:
	ln -fsb $(path)gitignore ~/.gitignore

~/.vim_backup:
	ln -fsb $(path)vim_backup ~/.vim_backup

~/.config/rofi:
	ln -fsb $(path)rofi ~/.config/rofi

git: ~/.gitconfig ~/.gitignore
vim: ~/.vim ~/.vim_backup
vimrc: ~/.vimrc
zshrc: ~/.zshrc
diff: ~/diff-so-fancy
tmux: ~/.tmux.conf
rofi: ~/.config/rofi
.PHONY: i3
i3:
	ln -fsb $(path)/i3/config ~/.config/i3/config

.PHONY: regolith
regolith:
	ln -fsb $(path)Xresources-regolith ~/.Xresources-regolith
	ln -fsb $(path)regolith ~/.config/
	ln -fsb $(path)timewarrior ~/
	ln -fsb $(path)scripts ~/

all: git vim vimrc zshrc diff tmux
