# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler jruby rails3 rake ruby rvm)

RPROMPT='%~ %{$fg[red]%}$(rvm_ruby_prompt)%{$reset_color%} %{$fg_bold[grey]%}%*%{$reset_color%}'
function rvm_ruby_prompt {
  ruby_version=$(~/.rvm/bin/rvm-prompt)
  if [ -n "$ruby_version" ]; then
    echo "[$ruby_version]"
  fi
}

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/waleed/.rvm/gems/ruby-1.9.3-p194/bin:/home/waleed/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/waleed/.rvm/rubies/ruby-1.9.3-p194/bin:/home/waleed/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/waleed/.rvm/bin

alias app1='ssh -p 788 boundless@5.79.60.209'
alias app2='ssh -p 788 boundless@5.79.60.210'
alias app3='ssh -p 788 boundless@5.79.60.211'
alias mail_com='ssh root@31.222.157.244'
alias mail_net='ssh root@31.222.155.223'
alias staging='ssh boundless@test.jawaker.com'
alias bmailr='ssh root@bmailr.com'

export JAWAKER_DIR=/mnt/apps/jawaker
export REDIS_DIR=~/src/redis/src
export STATSD_DIR=~/src/statsd
export ZK_DIR=~/src/zookeeper-3.4.5

DISABLE_AUTO_TITLE=true
unsetopt correct_all
