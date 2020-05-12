#---------------------------------------
#-    my  zch config                   -
#---------------------------------------

#---------------------------------------
#-  top level stuff                    -
#---------------------------------------

# git prerequisites
source ~/.bash/git-prompt.sh
zstyle ':completion:*:*:git:*' script ~/.bash/git-completion.bash
fpath=(~/.zsh $fpath)

# command prompt
# %B%F{25} - make bold and set foreground color to 25
#       %2 - show the working directory + its immediate parent
# %(?.%F{green}√.%F{red}X)%f - show a exit code identifier
# $(__git_ps1 " (%s)") - show the current git branch
# %(!.!.>) - show a root privilage identifier
export GIT_PS1_SHOWDIRTYSTATE="true"
setopt PROMPT_SUBST;
PROMPT='%(?.%F{green}√.%F{red}X)%f %B%F{25}%2~%f%b $(__git_ps1 "(%s)") %(!.!.>) '

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Enable zsh completions
autoload -Uz compinit && compinit

#---------------------------------------
#-     Shortcuts                       -
#---------------------------------------
alias c=clear


#---------------------------------------
#-    git                              -
#--------------------------------------
# useful aliases
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

# git completion
# -------------------------------------------------
# -                  Extras                       -
# -------------------------------------------------

# If there are any custom profile additions, such
# as NVM, virtualenv, etc., add them to the
# '.shell_extras' file in your home dir

if [ -f "$HOME/.shell_extras" ];
then
    . $HOME/.shell_extras
fi
