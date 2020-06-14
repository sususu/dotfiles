#!/bin/bash
: "${XDG_CONFIG_HOME:=$HOME/.config}"
DOTFILES_DIR="$HOME/dotfiles"

# $ZDOTDIRが.zprofile中で指定される場合は、$HOME/.zprofileが読み込まれる（はず）
# 念のため両方に用意しておく
: "${ZDOTDIR:=~/.zsh}"
ln -sni ~/dotfiles/.zprofile ~/.zprofile
ln -sni ~/dotfiles/.zprofile "$ZDOTDIR/.zprofile"
ln -sni ~/dotfiles/.zshrc "$ZDOTDIR/.zshrc"

# Git
ln -sni ~/dotfiles/gitignore "$XDG_CONFIG_HOME/git/ignore"

# dotfiles
for target in .bundle .git-template .ctags .gitconfig .tigrc .tmux.conf .vimrc .config/karabiner; do
  ln -sni ~/dotfiles/$target ~/$target
done

for target in settings.json keybindings.json; do
  ln -sni "$HOME/dotfiles/vscode/$target" "$HOME/Library/Application Support/Code/User/$target"
done

ln -sni "$DOTFILES_DIR/brewfile" "$XDG_CONFIG_HOME/brewfile"
