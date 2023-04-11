def all_cargo_commands [] {
  ^cargo --list | split row "\n" | skip 1 | split column "    " --collapse-empty | get column1 -i
}

def color_types [] {
  [auto always never]
}

export extern "cargo" [
  subcommand?: string@all_cargo_commands
  -h --help
  -V --version
  --list
  --explain: string
  -v --verbose
  --quiet
  --color: string@color_types
  --frozen
  --locked
  --offline
  --config: string
  -Z: string
]

export extern "cargo build" [
  --quiet
  -p --package: string
  --workspace
  --exclude: string
  -v --verbose
  --all
  --color: string@color_types
  -j --jobs: number
  --frozen
  --keep-going
  --lib
  --locked
  --bin: string
  --offline
  --bins
  --config: string
  --example: string
  --test: string
  --tests
  --bench: string
  --benches
  --all-targets
  -r --release
  --profile: string
  -F --features
  --all-features
  --no-default-features
  --target: string
  --target-dir: string
  --out-dir: string
  --manifest-path: string
  --ignore-rust-version
  --message-format: string
  --build-plan
  --unit-graph
  --future-incompat-report
  --timings: string
  -h --help
]
