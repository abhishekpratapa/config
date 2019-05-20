#!/bin/sh

# Add dotfile and other symlinks to home directory
find `pwd` -name ".*" | grep -v "\/\.git$" | xargs -I {} ln -fs {} ~

# Install necessary plugins/themes
test -d ~/.tmux/themes/nord-tmux || git clone https://github.com/arcticicestudio/nord-tmux ~/.tmux/themes/nord-tmux
