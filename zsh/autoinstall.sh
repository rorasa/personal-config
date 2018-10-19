#!/bin/bash

echo "Installing ZSH and Wattanit's ZSH configurations"

# Install Oh-my-zsh https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install z.sh
wget https://raw.githubusercontent.com/rupa/z/master/z.sh
mv z.sh $HOME/.oh-my-zsh/z.sh

# Install .zshrc configuration
cp .zshrc $HOME/.zshrc 
