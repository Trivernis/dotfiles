#!/bin/nu

def main [
  dir: string # The directory that contains the rust projects
] {
  echo $"Cleaning ($dir)"
  (
    ls $dir
    | get name 
    | where ($it | ls $it | where name =~ 'Cargo.toml' | length ) > 0 
    | par-each { cd $in; cargo clean }
    | ignore
  )
  echo $"($dir) cleaned"
}
