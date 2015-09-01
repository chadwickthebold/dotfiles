# ls color settings
alias ls='ls -G'
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

PATH=$PATH:/Applications/MAMP/bin/php/php5.3.27/bin:/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin
export PATH

# Regular
txtred='\e[0;31m' # Red
txtcyn='\e[0;36m' # Cyan
txtrst='\e[0m'    # Text Reset

find_git_branch() {
   # Based on: http://stackoverflow.com/a/13003854/170413
     local branch
       if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null); then
             if [[ "$branch" == "HEAD" ]]; then
                     branch='detached*'
                         fi
                             git_branch="($branch)"
                               else
                                     git_branch=""
                                       fi
}

find_git_dirty() {
   local status=$(git status --porcelain 2> /dev/null)
     if [[ "$status" != "" ]]; then
           git_dirty='*'
             else
                   git_dirty=''
                     fi
}

PROMPT_COMMAND="find_git_branch; find_git_dirty; $PROMPT_COMMAND"

# Terminal Prompt Settings
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

alias ll='ls -lha'
alias cc='clear'

# Git Shortcuts
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gco='git checkout'
alias gp='git push'
alias gpl='git pull --rebase origin'
alias gps='git push origin'
alias gfu='git fetch upstream'
alias gplu='git pull --rebase upstream'
alias gpsu='git push upstream'
alias gl='git log --stat --graph'
alias gr='git rebase'
alias gtv='git remote'
alias grst='git reset --hard'

alias gst='git stash'
alias gss='git stash save'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsd='git stash drop'
alias gsa='git stash apply'

alias gm='git merge'
alias gmf='git merge --no-ff'
alias gmd='git merge dev'

alias gbg='git branch | grep '

# Checkout Shortcuts
alias gcd='git checkout dev'
alias gcs='git checkout staging'
alias gcm='git checkout master'


export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias fdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;