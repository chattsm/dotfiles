# Dotfiles

## Prerequisites
```
brew install zsh && sudo chsh -s /usr/local/bin/zsh chattsm
brew install git
brew install hub
brew install ruby-install
brew install node
brew install yarn
brew install chruby
brew install go
brew install rust
brew install ripgrep
brew install tmux
brew install vim
brew install colordiff
brew install tree
brew install source-highlight
brew install httpie
brew install ctop
brew install htop
brew install gpg
brew install fd
brew install fzf
brew install jq
brew install shellcheck
brew install tldr
brew cask install iterm2
brew cask install code
brew cask install docker
brew cask install visual-studio-code
brew cask install keybase
brew cask install monitorcontrol
```

### Installing
```
cd ~
git clone --recursive git@github.com:chattsm/dotfiles.git
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
ln -s ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
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

## Prezto

### Keeping up-to-date with upstream
```
cd ~/dotfiles/zprezto
git checkout theme/chattsm
git remote add upstream git@github.com:sorin-ionescu/prezto.git
git pull --rebase upstream master
git push origin --force
cd ~/dotfiles/
git add zprezto
git commit -m 'Bump prezto'
git push
```

## iTerm2

### Loading and Saving preferences
```
Menu -> Preferences -> General -> Preferences (tab)
Check 'Load preferences from a custom folder or URL:' and enter '~/dotfiles'
Check 'Save changes to folder when iTerm2 quits'
```

## Code

### Installing Extensions
```
cat ~/dotfiles/vscode/extensions.txt | xargs -n1 code --install-extension
```

### Updating Extensions
```
code --list-extensions >! ~/dotfiles/vscode/extensions.txt
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
