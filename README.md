Alan's Dotfiles
================

####Configuring Command-T

1. Make sure your vim has ruby support (command-t is partially written in ruby)

vim --version | grep ruby

######If your vim does NOT have ruby support

Clone vim

    $ hg clone https://vim.googlecode.com/hg/ ~/vim

Update it to the version that plays nicely with ruby

    $ cd ~/vim
    $ hg update -C v7-3-154

Configure it with ruby, perl, python
    $ ./configure --with-features=huge  --disable-largefile \
            --enable-perlinterp   --enable-pythoninterp \
            --enable-rubyinterp   --enable-gui=gtk2 \

Install Vim
    $ make
    $ sudo make install

2. Go into your ruby/command-t directory and build the command-T extension

    $ ruby extconf.rb
    $ make

Note: If you do not have ruby installed, install it using RVM.



