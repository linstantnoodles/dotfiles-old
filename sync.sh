#!/bin/bash
echo "Syncing dotfiles..."
for f in .vimrc .vim
do
    ln -fvs $PWD/$f $HOME/$f
done
echo "Done."
