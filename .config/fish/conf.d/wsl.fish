abbr -ag cdd 'cd /mnt/d/Downloads'
abbr -ag cdh 'cd ~'

alias fd 'fdfind'
alias open 'explorer.exe'

function nvencode
  /mnt/d/Program\ Files/cli/NVEncode/NVEncC64.exe $argv
end

abbr -ag cdd 'cd /mnt/d/Downloads'
abbr -ag cdh 'cd ~'
alias fd 'fdfind'
alias open 'explorer.exe'
function nvencode
  /mnt/d/Program\ Files/cli/NVEncode/NVEncC64.exe $argv
end

set -x rootdir "/mnt/c/Windows/system32"

if test $rootdir = (pwd)
  cd ~
end
