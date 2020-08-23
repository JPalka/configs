.DEFAULT_GOAL = all

git:
  ln -fs gitconfig ~/.gitconfig

vim:
  ln -fs vim ~/.vim

zshrc:
  ln -fs zshrc ~/.zshrc

all: git vim zshrc
