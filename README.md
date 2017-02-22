# Dotfiles

## Prerequisites
```
brew install zsh
brew install git
brew install hub
brew install ruby-install
brew install chruby
brew install the_silver_searcher
brew install tmux
brew install vim
brew install colordiff
brew install tree
brew install source-highlight
```
Install NVM - https://github.com/creationix/nvm

### Installing
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
ln -s ~/dotfiles/pryrc ~/.pryrc
ln -s ~/dotfiles/atom/config.cson ~/.atom/config.cson
ln -s ~/dotfiles/atom/init.coffee ~/.atom/init.coffee
ln -s ~/dotfiles/atom/keymap.cson ~/.atom/keymap.cson
ln -s ~/dotfiles/atom/snippets.cson ~/.atom/snippets.cson
ln -s ~/dotfiles/atom/styles.less ~/.atom/styles.less
```
### Extending
```
git submodule add [repo] [path]
git submodule update --init --recursive
```

### Updating
```
git submodule update --remote --merge
git submodule update --init --recursive
```

## Atom

### Installing Packages
```
apm install --packages-file ~/dotfiles/atom/packages.txt
```

### Updating Packages
```
apm list --installed --bare >! ~/dotfiles/atom/packages.txt
```
