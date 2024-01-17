
## Install
```bash
git config --global alias.dotfiles '!git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/leb-kuchen/dotfiles $HOME/.dotfiles
dotfiles submodule init
dotfiles submodule update
git dotfiles checkout
```
