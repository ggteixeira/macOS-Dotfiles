# zmodload zsh/zprof # top of your .zshrc file

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

AUTO_MENU=1

# Ativa o case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export TERM="xterm-256color"

###############
### ALIASES ###
###############

# General aliases
# alias vim='nvim'
alias ..='cd ..'
alias ...='cd .. && cd ..'
alias ....='cd .. && cd .. && cd ..'
alias .....='cd .. && cd .. && cd .. && ..'
alias grep='grep --color=auto'
alias li='ls -l'
alias power='vim .p10k.zsh'
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias zshrc="vim ~/.zshrc"
alias workoff='deactivate'
alias github='cd ~/github'
alias -s md=typora  # Markdown files
alias weather='curl http://wttr.in/'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias ls='ls -G'
alias ll='ls -lG'
alias pwdcp='pwd && pwd | tr -d '\n' | pbcopy'
# Dotfiles aliases (Bare Repository)
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

# movement aliases
alias gotovimcolors='cd /usr/share/vim/vim*/colors'
alias gotoreact='cd ~/github/learning-center/React && clear && ls'
alias gotoconjuga='cd ~/github/forks/conjugai-me && clear && ls'
alias gotoprinti='cd ~/Printi && clear && ls'
alias gotoalura='cd ~/github/learning-center/learning-react/languageflix && clear && ls'


# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit -v'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gp='git push'
alias gpom="git push origin master"
alias grmc='git rm --cached'
alias gst='git status'
alias please='sudo'

# Python aliases:

alias pipi='pip install --upgrade pip && pip install -r requirements.txt && pip freeze — local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U && pip freeze > requirements.txt && git add requirements.txt && git commit -m "Atualiza pacotes" && git push'

#########################
### VIRTUALENV ###
#########################

# Pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Setup virtualenv home
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

# Tell pyenv-virtualenvwrapper to use pyenv when creating new Python environments
# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# Set the pyenv shims to initialize

# if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
# fi

if [ -n "$(which pyenv)" ]; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  export PYENV_VIRTUALENV_DISABLE_PROMPT=1
fi


# pyenv virtualenvwrapper_lazy

# VIRTUALENVWRAPPER_PYTHON='/Users/guiemi/.pyenv/shims/python'
# export VIRTUAL_ENV_DISABLE_PROMPT=0

export PATH="/usr/local/opt/ruby/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#########################
###   OTHER CONFIGS   ###
#########################



# LOCALE
export LC_ALL=en_US.UTF-8

# Fastboot
export PATH=${PATH}:/Applications/Android

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############
### PLUGINS ###
###############

# zsh-syntax-highlighting 
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey ':' autosuggest-accept

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=246'

# powerlevel10k (Theme)
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# completion
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
fi

for dump in ~/.zcompdump(N.mh+24); do
    compinit
done

compinit -C
zstyle ':completion:*' menu yes select

if [[ "${terminfo[kcbt]}" != "" ]]; then
  bindkey "${terminfo[kcbt]}" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi

# zprof # bottom of .zshrc
export PATH="/usr/local/opt/ruby/bin:$PATH"

# Brew
export PATH="/usr/local/sbin:$PATH"

# Pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Ensures pyenv can be used when and where necessary, now and ongoing in development needs 
# if command -v pyenv 1>/dev/null 2>&1; then
#     eval "$(pyenv init -)"
# fi

# Config do OpenSSL / Pyenv
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# Config de autoativação do Pyenv-Virtualenv

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# Zsh profiler:
# zprof
