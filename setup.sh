#!/bin/bash

set -e

# Add dotfile and other symlinks to home directory
find `pwd` -maxdepth 1 -name ".*" | grep -v "\/\.git$" |  xargs -I {} ln -fs {} ~

# Install necessary plugins/themes
test -d ~/.tmux/themes/nord-tmux || git clone https://github.com/arcticicestudio/nord-tmux ~/.tmux/themes/nord-tmux
test -d ~/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Set nord as the Terminal.app theme
if [[ "$(uname -s)" == "Darwin" ]]; then
  theme=$(<.config-assets/Nord)
  plutil -replace Window\ Settings.Nord -xml "$theme" ~/Library/Preferences/com.apple.Terminal.plist
  defaults write com.apple.Terminal "Default Window Settings" -string "Nord"
  defaults write com.apple.Terminal "Startup Window Settings" -string "Nord"
fi

# Set up VSCode
if [[ "$(uname -s)" == "Darwin" ]]; then
  mkdir -p ~/Library/Application\ Support/Code/User/
  ln -fs vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
else
  mkdir -p ~/.config/Code/User/
  ln -fs vscode-settings.json ~/.config/Code/User/settings.json
fi

# Install VSCode extensions
which code || (echo "Could not find Visual Studio Code; install it following https://code.visualstudio.com/docs/setup/setup-overview" && false)
code --install-extension arcticicestudio.nord-visual-studio-code
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension peterjausovec.vscode-docker
code --install-extension twxs.cmake
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension vscodevim.vim
