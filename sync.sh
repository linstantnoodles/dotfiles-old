#!/bin/bash
echo "Syncing dotfiles..."
for f in .vimrc .vim .gitconfig
do
    ln -fnivs $PWD/$f $HOME/$f
done
echo "Done."
