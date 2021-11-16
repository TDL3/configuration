all: fish

base_dir = ~/
make_symbolic_link = ln -rfs ./.$(1) $(base_dir).$(1)
.PHONY: fish

git:
	eval $(call make_symbolic_link,gitconfig)
	
fish:
	eval $(call make_symbolic_link,config/fish/conf.d/alias.fish)
	eval $(call make_symbolic_link,config/fish/conf.d/omf.fish)
	eval $(call make_symbolic_link,config/fish/conf.d/update.fish)
	
pacman-write:
	 pacman -Qqet > Pacmanfile && less Pacmanfile

pacman-install:
	 yay -S --needed - < Pacmanfile

remove-manjaro-browser-settings:
	sudo pacman -Rs manjaro-browser-settings
