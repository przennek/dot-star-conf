#!/bin/bash

# cleanup
rm $HOME/.tmux.conf
rm $HOME/.zshrc
rm $HOME/.aerospace.toml
rm $HOME/.ideavimrc

rm $HOME/.local/bin/tmux-sessionizer
rm $HOME/.local/bin/kill-gui
rm $HOME/.local/bin/docker-cleanup

mkdir -p $HOME/.config/yazi
rm $HOME/.config/yazi/config.toml

# link
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/.zshrc $HOME/.zshrc
ln -s $PWD/.ideavimrc $HOME/.ideavimrc
ln -s $PWD/.aerospace.toml $HOME/.aerospace.toml

ln -s $PWD/tmux-sessionizer $HOME/.local/bin/tmux-sessionizer
ln -s $PWD/kill-gui.sh $HOME/.local/bin/kill-gui
ln -s $PWD/docker-cleanup.sh $HOME/.local/bin/docker-cleanup

ln -s $PWD/yazi.conf $HOME/.config/yazi/config.toml

