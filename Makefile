all: wget curl git npm fish docker youtube-dl

base_dir = ~/
make_symbolic_link = ln -rfs ./.$(1) $(base_dir).$(1)
.PHONY: fish

wget:
	eval $(call make_symbolic_link,wgetrc)

curl:
	eval $(call make_symbolic_link,curlrc)

git:
	eval $(call make_symbolic_link,gitconfig)
	
npm:
	eval $(call make_symbolic_link,npmrc)
	
fish:
	eval $(call make_symbolic_link,config/fish/conf.d/alias.fish)
	eval $(call make_symbolic_link,config/fish/conf.d/omf.fish)
	eval $(call make_symbolic_link,config/fish/conf.d/proxy.fish)
	eval $(call make_symbolic_link,config/fish/conf.d/update.fish)

docker:
	eval $(call make_symbolic_link,docker/config.json)
	
youtube-dl:
	eval $(call make_symbolic_link,config/youtube-dl/config)

pacman-write:
	 pacman -Qqet > Pacmanfile && less Pacmanfile
	 
pacman-install:
	 yay -S --needed - < Pacmanfile

manjaro-browser-tweak:
	sudo pacman -Rs manjaro-browser-settings
