if [ -d ~/.config/lvim ]; then
    sudo cp -r ~/.config/lvim ./lvimv2.0
else
    echo "~/.config/lvim does not exist, skipping copy"
fi

sudo rm -rf ./lazyvim-santihs

if [ -d ~/.config/nvim ]; then
    sudo cp -r ~/.config/nvim ./lazyvim-santihs
else
    echo "~/.config/nvim does not exist, skipping copy"
fi

if [ -f ~/.ideavimrc ]; then
    cp ~/.ideavimrc ./
else
    echo "~/.ideavimrc does not exist, skipping copy"
fi

if [ -f ~/.zshrc ]; then
    cp ~/.zshrc ./
else
    echo "~/.zshrc does not exist, skipping copy"
fi
