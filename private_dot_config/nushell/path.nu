let-env PATH = ( $env.PATH
  | prepend $'($env.HOME)/.local/bin'
  | prepend $'($env.HOME)/.cargo/bin'
)
