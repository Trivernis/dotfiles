
export def `ytdl playlist` [url: string] {
  yt-dlp --yes-playlist -N 8 --playlist-reverse --embed-metadata --sponsorblock-mark sponsor -f "bv[vcodec~='av01\\..*']+ba / bv+ba" -o "%(uploader)s - %(title)s - %(id)s.%(ext)s" $url
}

export def `ytdl playlist 1080p` [url: string] {
  yt-dlp --yes-playlist -N 8 --playlist-reverse --embed-metadata --sponsorblock-mark sponsor -f "bv[height=1080][vcodec~='av01\\..*']+ba / bv[height=1080]+ba" -o "%(uploader)s - %(title)s - %(id)s.%(ext)s" $url
}
