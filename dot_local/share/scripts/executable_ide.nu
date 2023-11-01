#!/bin/env nu

def main [] {
  zellij --layout ~/.config/zellij/development.toml
}

def `main open-file` [path: string] {
  match ($path | path parse | get extension | str downcase) {
    "png" => { open-image $path }
    "jpg" => { open-image $path }
    "jpeg" => { open-image $path }
    _ => { open-editor $path }
  }
}

def open-editor [path: string] {
  zellij ac move-focus right
  zellij ac write-chars $":open ($path)\r"
}

def open-image [path: string] {
  zellij ac new-pane -f -- chafa -C on --scale max $path
}
