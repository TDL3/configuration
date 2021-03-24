#
# This function check and update the system.
# By default, packages in offical repo will use pacman to update, packages in aur will use yay to update.
# If --pacman flag is set, update will performed by pacman instaed of pamac.
# If --aur_only flag is set, only aur packages will be updated.
#
function upp
    set -l options (fish_opt -s a -l aur_only)
    set options $options (fish_opt -s p -l pacman)
    argparse $options -- $argv
    or return

    if set -q _flag_aur_only
        update_aur
        return
    end

    if set -q _flag_pacman
        green "[Info] Updating system using pacman"
        sudo pacman -Syu
    else
        green "[Info] Updating system using Pamac"
        pamac checkupdates --no-aur
        # Exit code is 100 if updates are available according to man page.
        if test $status -eq 100
            sudo pamac upgrade --no-aur
        end
    end
    update_aur 
end

function update_aur
    green "[Info] Updating AUR packages using yay"
        yay -Sua --answerclean All --answerdiff None
end

function green
    echo (set_color green)$argv(set_color normal)
end
