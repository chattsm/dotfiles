# Dotfiles

## Prerequisites
```
brew install zsh && sudo chsh -s /usr/local/bin/zsh chattsm
brew install bash git hub ruby-install node yarn chruby go rust ripgrep tmux \
vim colordiff tree source-highlight httpie ctop htop gpg fd fzf jq shellcheck \
tldr rclone rsync
brew cask install iterm2 docker visual-studio-code keybase monitorcontrol \
fork resolutionator
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
