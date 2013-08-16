Alan's Dotfiles
================

####Configuring Command-T

1. Make sure your vim has ruby support (command-t is partially written in ruby)

vim --version | grep ruby

######If your vim does NOT have ruby support

`hg clone https://vim.googlecode.com/hg/ ~/vim`

`cd ~/vim`
hg update -C v7-3-154
./configure --with-features=huge  --disable-largefile \
            --enable-perlinterp   --enable-pythoninterp \
            --enable-rubyinterp   --enable-gui=gtk2 \
make
sudo make install


2. Build the extension

ruby extconf.rb
make

Note: If you do not have ruby installed, install it using RVM.



