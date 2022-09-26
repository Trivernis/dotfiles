def all_container_names [] {
  podman container ls --all --format json | from json | get Names | each { get 0 }
}

def running_container_names [] {
  podman container ls --format json | from json | get Names | each { get 0 }
}

export extern "podman start" [
  container: string@all_container_names
  --help
  -a --attach
  --detach-keys
  -f:string --filter:string
  -i --interactive
  -l --latest
]

export extern "podman stop" [
  container: string@running_container_names
  -a --all
  --cidfile: list
  -i --ignore
  -l --latest
  -t: number --time: number
]