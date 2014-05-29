#!/bin/bash
echo "Syncing dotfiles..."
for f in .vimrc .vim .gitconfig .aliases .bash_prompt .bash_profile .bashrc
do
    ln -fnivs $PWD/$f $HOME/$f
done
echo "Done."
