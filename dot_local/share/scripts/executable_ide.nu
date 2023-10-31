#!/bin/env nu

def main [] {
  zellij --layout ~/.config/zellij/development.toml
}

def `main open-file` [path: string] {
    zellij action move-focus right
    zellij action write-chars $":open ($path)\r"
}
