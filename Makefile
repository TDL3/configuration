.PHONY: all fish neovim yt-dlp aria2 xmonad clean
all: fish neovim yt-dlp aria2

fish_dir := .config/fish/conf.d
nvim_dir := .config/nvim
xmonad_dir := .config/xmonad
yt-dlp_dir := .config/yt-dlp
aria2_dir := .aria2
	
fish:
	@mkdir -p ~/$(fish_dir)
	cp -f $(fish_dir)/alias.fish  ~/$(fish_dir)/alias.fish
	cp -f $(fish_dir)/yt-dlp.fish  ~/$(fish_dir)/yt-dlp.fish
	cp -f $(fish_dir)/git.fish  ~/$(fish_dir)/git.fish
	cp -f $(fish_dir)/truecolor.fish  ~/$(fish_dir)/truecolor.fish
	
neovim:
	@mkdir -p ~/$(nvim_dir)
	cp -f $(nvim_dir)/init.vim  ~/$(nvim_dir)/init.vim
	
xmonad:
	@mkdir -p ~/$(xmonad_dir)
	cp -f $(xmonad_dir)/.xmonad.hs ~/$(xmonad_dir)
	
yt-dlp:
	@mkdir -p ~/$(yt-dlp_dir)
	cp -f $(yt-dlp_dir)/config ~/$(yt-dlp_dir)
	
aria2:
	@mkdir -p ~/$(aria2_dir)
	@echo "" > ~/$(aria2_dir)/aria2.session
	cp -f $(aria2_dir)/aria2.conf ~/$(aria2_dir)	 
	
	
clean:
	rm -f ~/$(fish_dir)/alias.fish
	rm -f ~/$(fish_dir)/yt-dlp.fish	
	rm -f ~/$(fish_dir)/truecolor.fish
	rm -f ~/$(fish_dir)/git.fish	
	rm -f ~/$(nvim_dir)/nvim/init.vim
	rm -f ~/$(xmonad_dir)/.xmonad.hs
	rm -f ~/$(yt-dlp_dir)/config
	rm -f ~/$(aria2_dir)/aria2.conf
