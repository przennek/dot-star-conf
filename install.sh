#!/bin/bash

rm $HOME/.tmux.conf
rm $HOME/.zshrc
rm $HOME/.local/bin/tmux-sessionizer
rm $HOME/.aerospace.toml
rm $HOME/.local/bin/kill-gui
rm $HOME/.ideavimrc

mkdir -p $HOME/.config/yazi
rm $HOME/.config/yazi/config.toml

ln -s $PWD/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/tmux-sessionizer $HOME/.local/bin/tmux-sessionizer
ln -s $PWD/.aerospace.toml $HOME/.aerospace.toml
ln -s $PWD/yazi.conf $HOME/.config/yazi/config.toml
ln -s $PWD/kill-gui.sh $HOME/.local/bin/kill-gui
ln -s $PWD/.ideavimrc $HOME/.ideavimrc
