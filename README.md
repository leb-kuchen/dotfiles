
## Install
```bash
git config --global alias.dotfiles '!git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare --recursive  https://github.com/leb-kuchen/dotfiles $HOME/.dotfiles
git dotfiles checkout
```
