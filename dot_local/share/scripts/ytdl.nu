export def `ytdl playlist` [url: string] {
  yt-dlp --yes-playlist -N 8 --playlist-reverse --embed-metadata --sponsorblock-mark sponsor -f "bv[height=1080][vcodec~='av01\\..*']+ba / b[height=1080]" -o "%(uploader)s - %(title)s - %(id)s.%(ext)s" $url
}
