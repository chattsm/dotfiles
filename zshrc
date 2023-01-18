#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Catalina forces use of ZSH so we need to be explicit about using zhistory now
# before loading prezto
# https://github.com/sorin-ionescu/prezto/issues/1744
export HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [[ "$(uname)" == "Darwin" ]]; then
  # Sleep image and immediately enter "standby" along with FileVault destroying
  # disk decryption keys
  # pmset -g | rg -e 'hibernate|standby|poweroff'
  pm-hibernate() {
    sudo pmset -a hibernatemode 25
    sudo pmset -a standbydelayhigh 0
    sudo pmset -a standbydelaylow 0
    sudo pmset -a autopoweroffdelay 0
    sudo pmset -a destroyfvkeyonstandby 1
  }

  # Restore all settings to their defaults, effectively restoring default sleep
  # behavior for macOS laptops
  pm-safesleep() {
    sudo pmset -a hibernatemode 3
    sudo pmset -a standbydelayhigh 86400
    sudo pmset -a standbydelaylow 10800
    sudo pmset -a autopoweroffdelay 28800
    sudo pmset -a destroyfvkeyonstandby 0
  }
fi

# Lets behave more like Vim when in Vi mode
bindkey -M vicmd "?" vi-history-search-backward
bindkey -M vicmd "/" vi-history-search-forward
KEYTIMEOUT=1

# Bind run-help (man) to ESC-h
# http://bewatermyfriend.org/media/vi-mode.zsh
# http://docstore.mik.ua/orelly/unix3/upt/ch30_14.htm
bindkey -M vicmd '^[h' run-help
#bindkey -M viins '^[h' run-help

# Remove annoying beeps
setopt nobeep

# Remove percent on output from commands with no line break
# http://superuser.com/a/645612
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

# Make sure return key never stops working!
# http://askubuntu.com/questions/441744/pressing-enter-produces-m-instead-of-a-newline/454663
stty icrnl

# Make less behave more like it does in Bash, remove -F and -X (see .zprofile)
# http://www.greenwoodsoftware.com/less/faq.html#tite
export LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-g -i -M -R -S -w -z-4'

# Add local bins to path
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=node_modules/.bin:$PATH
export PATH=~/dotfiles/bin:$PATH
export PATH="$PATH:`yarn global bin`"

# Add Minishift to $PATH
[ -x "$(command -v minishift)" ] && eval $(minishift oc-env)

# Tell PostgreSQL we want to login as the 'postgres' user
export PGUSER=postgres

# Set our default CLI editor
export EDITOR=vim
export VISUAL=vim

# Make pgp passphrases work properly
# https://www.elliotblackburn.com/importing-pgp-keys-from-keybase-into-gpg/
export GPG_TTY=$(tty)

# Aliases
alias be='bundle exec'
alias berai='bundle exec rails'
alias bers='bundle exec rspec'
alias bera='bundle exec rake'

alias brai='bin/rails'
alias brs='bin/rspec'
alias bra='bin/rake'
alias bs='bin/spring'

alias eslint='nocorrect eslint'

alias gs='git status'
alias gst='git stash'
alias gc='git commit'
alias ga='git add'
alias gpu='git pull'
alias gp='git push'
alias gpo='git push -u origin'
alias gd='git diff'
alias gds='git diff --staged'
alias gba='git branch -a'

alias dl='curl -C - -L --retry 10 -O'
alias dlf='curl -C - -L --retry 10 -o'

# Global aliases
#alias -g rai='rails'
#alias -g rs='rspec'
#alias -g ra='rake'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
