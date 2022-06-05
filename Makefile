all: fish

fish_dir = .config/fish/conf.d
nvim_dir = .config/nvim
xmonad_dir = .config/xmonad
yt-dlp_dir = .config/yt-dlp
aria2_dir = .aria2
.PHONY: fish
	
fish:
	mk_dir -p ~/fish_dir
	cp -f fish_dir/alias.fish  ~/fish_dir/alias.fish	
	
neovim:
	mk_dir -p ~/nvim_dir
	cp -f nvim_dir/init.vim  ~/nvim_dir/init.vim
	
xmonad:
	mk_dir -p ~/xmonad_dir
	cp -f xmonad_dir/.xmonad.hs ~/xmonad_dir
	
yt-dlp:
	mk_dir -p ~/yt-dlp_dir
	cp -f yt-dlp_dir/config ~/yt-dlp_dir
	
aria2:
	mk_dir ~/aria2_dir
	cp -f aria2_dir/aria2.conf ~/aria2_dir	 
	
clean:
  rm -f ~/fish_dir/alias.fish
  rm -f ~/nvim_dir/nvim/init.vim
  rm -f ~/xmonad_dir/.xmonad.hs
  rm -f ~/yt-dlp_dir/config
  rm -f ~/aria2_dir/aria2.conf