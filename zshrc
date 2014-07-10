#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Chruby
if [[ -s "/usr/local/opt/chruby/share/chruby/chruby.sh" ]]; then
  source "/usr/local/opt/chruby/share/chruby/chruby.sh"
  chruby ruby-2.1.2
fi

# Chruby - auto loader
if [[ -s "/usr/local/opt/chruby/share/chruby/auto.sh" ]]; then
  source "/usr/local/opt/chruby/share/chruby/auto.sh"
fi

# Lets behave more like Vim when in Vi mode
bindkey -M vicmd "?" vi-history-search-backward
bindkey -M vicmd "/" vi-history-search-forward
KEYTIMEOUT=1

# Remove annoying beeps
setopt nobeep

# Remove percent on output from commands with no line break
# http://superuser.com/a/645612
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""

# Make less behave more like it does in Bash, remove -F and -X (see .zprofile)
# http://www.greenwoodsoftware.com/less/faq.html#tite
export LESS='-g -i -M -R -S -w -z-4'

# Add local bins to path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Tell PostgreSQL we want to login as the 'postgres' user
export PGUSER=postgres

# Set our default CLI editor
export EDITOR=vim
export VISUAL=vim

# Aliases
alias rb='ruby'

alias be='bundle exec'
alias berai='bundle exec rails'
alias bers='bundle exec rspec'
alias bera='bundle exec rake'

alias brai='bin/rails'
alias brs='bin/rspec'
alias bra='bin/rake'
alias bs='bin/spring'

alias gs='git status'
alias gst='git stash'
alias gc='git commit'
alias ga='git add'
alias gpu='git pull'
alias gp='git push'
alias gpo='git push origin'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Global aliases
#alias -g rai='rails'
#alias -g rs='rspec'
#alias -g ra='rake'
