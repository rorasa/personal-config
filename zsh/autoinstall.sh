#!/bin/bash

echo "Installing ZSH and Wattanit's ZSH configurations"

# Install Oh-my-zsh https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install .zshrc configuration
cp .zshrc $HOME/.zshrc 
