Clone .dotfiles under ~
cd .dotfiles

mkdir -p ~/.config/alacritty
stow -t ~/.config/alacritty alacritty

brew tap homebrew/cask-fonts
brew install --cask font-FiraCode-nerd-font
mkdir -p ~/.config/nvim
stow -t ~/.config/nvim astronvim

# Tmux installation
## Download the Tmux Package Manager
https://github.com/tmux-plugins/tpm

## Theme
We are currently using the following theme: https://github.com/catppuccin/tmux#themes. Look
at the GitHub repository for configuration.

## Tmux
https://github.com/tmux-python/tmuxp
stow tmux

# Scripts installation
stow scripts

TODO:
- ADD ZSH
- ADD ~/.p10k.zsh 
