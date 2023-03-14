# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To configure p10k prompt: `p10k configure`

export ZSH="/Users/pieterdejong/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh


# git config
git config --global core.excludesfile ~/.gitignore_global

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


alias src=source
alias brewnew='brew update && brew upgrade && brew cleanup && brew doctor'
alias ls='ls -lah'
alias ll='ls -lah'
alias python='python3'
alias diskspace='du -shc .??* * | sort -hr'
alias zsrc='source ~/.zshrc'

# directories
alias dev='cd ~/dev'
alias proj='cd ~/dev/projects'
alias kaggle='~/dev/kaggle'

function ytdl() {
   youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' $1
}

# Work in progress
# function save_as_pdfbook ($FILE) {
#   $PDFBOOKDIR="$HOME/docs/pdfs_books"
#   if [ -f "$FILE" ]; then
#       mv $PWD/$FILE PDFBOOKDIR/$FILE
#       echo "$FILE moved to $PDFBOOKDIR"
#   fi
# }

function emailcopy() {
  EMAIL="pieter.a.dejong@gmail.com"
  echo -n $EMAIL | pbcopy
  echo  "Email address copied to clipboard."
  unset EMAIL
}

function findgitdirs() {
  echo "Finding all .git repos recursively:\n"
  find . -name '.git' -type d -prune
}


function node-project() {
  git init
  npx license mit > LICENSE
  npx gitignore node
  npm init -y
  git add -A
  git commit -m "Initial commit"
}

function python-project() {
  # git init
}

function flask-project() {
  # git init
}

function django-project() {
  # git init
}

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
