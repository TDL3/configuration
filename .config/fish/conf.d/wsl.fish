abbr -ag cdd 'cd /mnt/e/Downloads'
abbr -ag cds 'cd /mnt/c/Users/JackS/IdeaProjects/ros'
abbr -ag cdh 'cd ~'

alias fd 'fdfind'
alias open 'explorer.exe'

function nvencode
  /mnt/d/Program\ Files/cli/NVEncode/NVEncC64.exe $argv
end

set -x rootdir "/mnt/c/WINDOWS/system32"

if test $rootdir = (pwd)
  cd ~
end
