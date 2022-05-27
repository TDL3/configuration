### unix ###
alias free='free -h --giga' 
alias ls='ls -F -h --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias rg='rg --color=auto'


### git ###
alias gc="git commit"
alias gca='git commit -a'
alias gap="git add -p"
alias gs="git status"
alias gl="git log --pretty=format:\"%h - %an, %ar : %s\""
alias gsig='git log --show-signature'


alias vim='nvim'
alias python='python3'

### windows ###
alias cdd='cd /mnt/d/Download'
alias cdh='cd ~'
alias fd='fdfind'

function nvencode
    /mnt/d/Program\ Files/cli/NVEncode/NVEncC64.exe $argv
end
