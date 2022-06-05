### unix ###
alias free 'free -h --giga'
alias ls 'ls -Fh'
abbr tarcreate 'tar -czvf'
abbr tarlist 'tar -ztvf'
abbr untar 'tar -xzvf'

### git ###
abbr -ag gs 'git status -b'
abbr -ag gc 'git commit -v'
abbr -ag gca 'git commit -v -a'
abbr -ag gap 'git add -p'
abbr -ag gl 'git log --pretty format:\"%h - %an, %ar : %s\"'
abbr -ag gd 'git diff'
abbr -ag gds 'git diff --stat'


alias vim 'nvim'
alias python 'python3'
alias brewup 'brew update && and brew upgrade --all && and brew cleanup && and brew prune'
