#!/bin/bash

echo "Installing Wattanit's vimrc configurations"

# Check for .vim directory
if [ ! -d "$HOME/.vim" ]; then
    echo "Creating .vim directory"
    mkdir "$HOME/.vim"
fi

# Check for .vim/colors directory
if [ ! -d "$HOME/.vim/colors" ]; then
    echo "Creating .vim/colors directory"
    mkdir "$HOME/.vim/colors"
fi

# Check for .vim/autoload directory
if [ ! -d "$HOME/.vim/autoload" ]; then
    echo "Creating .vim/autoload directory"
    mkdir "$HOME/.vim/autoload"
fi

# Check for .vim/bundle directory
if [ ! -d "$HOME/.vim/bundle" ]; then
    echo "Creating .vim/bundle directory"
    mkdir "$HOME/.vim/bundle"
fi

# Installing colourscheme
echo "Copying Molokai colourscheme"
cp colors/molokai.vim $HOME/.vim/colors/molokai.vim

# Installing plugins
echo "Installing Pathogen.vim"
cp autoload/pathogen.vim $HOME/.vim/autoload/pathogen.vim

echo "Installing nerdtree"
git clone https://github.com/scrooloose/nerdtree.git $HOME/.vim/bundle/nerdtree

# Installing vimrc
echo "Copying .vimrc"
cp vimrc $HOME/.vimrc

echo "vimrc is installed for $USER."
