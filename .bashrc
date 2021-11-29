if [ -x /usr/local/git/bin/git ]; then
    source ~/.git-completion.bash
fi

export EDITOR=/usr/bin/nano
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export TWITTER_CONSUMER_KEY="wGVs1rL50zfl8T0J7HriDg26e"
export TWITTER_CONSUMER_SECRET="cId1RFKtSufBfocMid6mLAvnJyfE4Zcim2KJuJjcu9N4AgQZnI"
export TWITTER_ACCESS_TOKEN="7659782-PyXT0BeLQcOiPccsDH25Gv1pAxLngQCO4PNQ4WfeEK"
export TWITTER_ACCESS_SECRET="ol1426YklKz9sLQS3XY9UdUzBrl5D3WWIN6Asm32GHqdL"

export ZSH_THEME="robbyrussell"

alias dev='cd ~/dev'

alias bashs='source ~/.bashrc'
alias bashe='nano ~/.bashrc'
alias bashv='cat ~/.bashrc'
alias tflow='cd ~/dev/tensorflow && source ./bin/activate'

alias ls='ls -lah'

alias brewnew='brew update && brew upgrade && brew prune && brew cleanup && brew doctor'
alias pipnew='pip3 install --upgrade pip'
alias python='python3'
alias pip='pip3'

alias pserver='python3 -m http.server'

alias brewnew="brew update; brew upgrade; brew cleanup; brew doctor"

scalasubmit() {
	sbt "submit pieter.a.dejong@gmail.com $1"	
}

# sudo find / -size +500000 -print

# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)\$ "
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# get process listening on port
listening() {
    lsof -n -iTCP:$1 | grep LISTEN
}
