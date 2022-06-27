alias yt yt-dlp
function yta
  yt-dlp --convert-thumbnails png --no-embed-subs --embed-thumbnail -f bestaudio --audio-format opus -x $argv
end
