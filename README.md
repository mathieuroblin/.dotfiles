# .dotfiles

## What is .dotfiles?

.dotfiles contains all the tooling configurations I have for:
* Tmux
* Nvim
* Alacritty
* oh-my-zsh (pending)

## How to use .dotfiles

Clone the repository in your home folder, then make the links to each tools one by one.Personally I use `stow` for this but you can do the links manually if you want.

* Make sure you have stow installed `brew install stow`.
* `cd ~/.dotfiles`

### Tmux
`stow tmux`

### Nvim
`stow nvim -t ~/.config/nvim`

### Alacritty
`stow alacritty`
