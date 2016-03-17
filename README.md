dotfiles
========

installation
------------
```
cd ~
git clone --recursive git@github.com:chattsm/dotfiles.git
ln -s ~/dotfiles/ackrc ~/.ackrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/zprezto ~/.zprezto
ln -s ~/dotfiles/zprezto/runcoms/zlogin ~/.zlogin
ln -s ~/dotfiles/zprezto/runcoms/zlogout ~/.zlogout
ln -s ~/dotfiles/zprofile ~/.zprofile
ln -s ~/dotfiles/zprezto/runcoms/zshenv ~/.zshenv
ln -s ~/dotfiles/zpreztorc ~/.zpreztorc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/pryrc ~/.pryrc
ln -s ~/dotfiles/atom ~/.atom
```

adding
------
```
git submodule add [repo] [path]
git submodule update --init --recursive
```

updating
--------
```
git submodule update --remote --merge
git submodule update --init --recursive
```
