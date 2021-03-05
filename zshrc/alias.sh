# general shortcuts
alias c='clear'
alias q='exit'

alias sz='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'

# applications
alias r="rg"
alias ca="cargo"
alias vim="nvim"
alias ls='exa'
alias cat='bat'

# docker
alias dsa="docker stop \$(docker ps -aq) && docker rm \$(docker ps -aq)"
alias dc="docker-compose"
alias dce="docker-compose exec"
alias du="dsa && dc up -d"

# git
alias g="git"
alias gs="git status"
alias gp="git push -u origin"
alias gu="git remote update && git pull"
alias gum="git checkout master && git pull" # get up-to-date master branch
alias gc="git checkout"
alias gl="git log --oneline"
alias ga="git add ."
alias gcm="git commit -am"
alias gr="git reset"
alias gd="git diff"
alias gcb="git branch --show-current" # get current git branch name

