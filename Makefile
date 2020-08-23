.DEFAULT_GOAL = all

git:
  ln -fs gitconfig ~/.gitconfig

vim:
  ln -fs vim ~/.vim

all: git vim
