#!/bin/sh

# Add dotfile and other symlinks to home directory
find `pwd` -name ".*" -maxdepth 1 | grep -v "\/\.git$" |  xargs -I {} ln -fs {} ~

# Install necessary plugins/themes
test -d ~/.tmux/themes/nord-tmux || git clone https://github.com/arcticicestudio/nord-tmux ~/.tmux/themes/nord-tmux
test -d ~/.vim/bundle/Vundle.vim || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Set nord as the Terminal.app theme
if [[ "$(uname -s)" -eq "Darwin" ]]; then
  theme=$(<.config-assets/Nord)
  plutil -replace Window\ Settings.Nord -xml "$theme" ~/Library/Preferences/com.apple.Terminal.plist
  defaults write com.apple.Terminal "Default Window Settings" -string "Nord"
  defaults write com.apple.Terminal "Startup Window Settings" -string "Nord"
fi

# Set up VSCode
if [[ "$(uname -s)" -eq "Darwin" ]]; then
  mkdir -p ~/Library/Application\ Support/Code/User/
  ln -fs vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
else
  mkdir -p ~/.config/Code/User/
  ln -fs vscode-settings.json ~/.config/Code/User/settings.json
fi
