### unix ###
alias free 'free -h --giga'
alias ls 'ls -Fh --color=always'
abbr tarcreate 'tar -czvf'
abbr tarlist 'tar -ztvf'
abbr untar 'tar -xzvf'

### git ###
abbr -ag gs 'git status -b'
abbr -ag gc 'git commit -v'
abbr -ag gca 'git commit -v -a'
abbr -ag gap 'git add -p'
abbr -ag gl 'git log --pretty="format:%Cgreen %h %Creset - %an, %ar: %Cblue %s"'
abbr -ag gd 'git diff'
abbr -ag gds 'git diff --stat'


alias vim 'nvim'
alias brewup 'brew update; and brew upgrade; and brew cleanup --prune=7'
