#!/bin/nu
$env.BORG_REPO = '/run/media/trivernis/Backup'
let BACKUP_PATHS = ([	
	~/Documents 
	~/Videos 
	~/Pictures/ 
	~/Music 
	~/.config 
	~/.zshrc 
	~/.local 
  /mnt/Data/Cloud/Nextcloud/ 
	/mnt/Data/Bilder/ 
	/mnt/Data/Dokumente/ 
	/mnt/Data/Filme/ 
	/mnt/Data/Audio/ 
	/mnt/Massdata/ 
	/etc
] | path expand )

if (pgrep borg | length) > 0 {
  echo "Borg is running"
  exit
}

borg break-lock
echo "Creating archive"
(borg create 
	--progress
	--warning
	--filter AME
	--compression zstd 
	--exclude-caches 
	--exclude '*/.cache' 
	--exclude '*/Rust/*/target' 
	--exclude '*/target/debug' 
	--exclude '*/target/release' 
	--exclude '*/node_modules' 
	--exclude '*/massdata.tar.gz' 
	--exclude '*/dynmap/web/tiles' 
	--exclude '*/work/*decompile' 
	--exclude '*/PortableGit*' 
	--exclude '*.pyc' 
	--exclude '*/Java/*/build' 
	--exclude '*/Java/*/out/artifacts' 
	--exclude '*/Java/*/target' 
	--exclude '*/Kotlin/*/target' 
	--exclude '*/Kotlin/*/out' 
	--exclude '*/Kotlin/*/build' 
	--exclude '*/.local/share/Steam'
	--list 
	--stats 
	'::{hostname}-{now}' 
	$BACKUP_PATHS
)
echo "Deleting old files"
(borg prune
	--progress
	--list
	--glob-archives '{hostname}-*'
	--show-rc
	--keep-daily 2
	--keep-weekly 2
	--keep-monthly 1
)
echo "Running check for five minutes"
(borg check
	--progress
	--repository-only
	--max-duration 300
)