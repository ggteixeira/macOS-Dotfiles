# zmodload zsh/zprof # top of your .zshrc file

# Path to your oh-my-zsh installation.
export ZSH="/Users/guiemi/.oh-my-zsh"


ZSH_THEME="robbyrussell"

# ALIASES
# General aliases
alias li='ls -l'
alias -s md=typora  # Markdown files
alias weather='curl http://wttr.in/'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias please='sudo'

# Dotfiles aliases (Bare Repository)
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

# movement aliases
alias gotovimcolors='cd /usr/share/vim/vim*/colors'
alias gotoreact='cd ~/github/learning-center/React && clear && ls'
alias gotoconjuga='cd ~/github/forks/conjugai-me && clear && ls'
alias gotoprinti='cd ~/Printi && clear && ls'
alias gotoalura='cd'
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias zshrc="vim ~/.zshrc"

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit -v'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias glogone='git log --oneline'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gp='git push'
alias gpom="git push origin main"
alias gpoma="git push origin master"
alias grmc='git rm --cached'
alias gst='git status'

# Python aliases:
alias pipi='pip install --upgrade pip && pip install -r requirements.txt && pip freeze — local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U && pip freeze > requirements.txt && git add requirements.txt && git commit -m "Atualiza pacotes" && git push'

# Fastboot
export PATH=${PATH}:/Applications/Android

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=500
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/guiemi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Source Powerlevel10K
source /Users/guiemi/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#Ruby settings:
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# TimeZsh
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# Pyenv settings
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Setting Homebew's path:
export PATH="/usr/local/sbin:$PATH"

# Zsh profiler:
# zprof

