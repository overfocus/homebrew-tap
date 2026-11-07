# overfocus/homebrew-tap

Homebrew formulae for [rigswig](https://github.com/overfocus/rigswig), the read-only explorer for what a
coding-agent session loads.

## Install

```sh
brew install overfocus/tap/rigswig
```

Or `brew tap overfocus/tap` and then `brew install rigswig`. In a `Brewfile`:

```ruby
tap "overfocus/tap"
brew "rigswig"
```

macOS (Apple Silicon and Intel) and Linux (arm64 and x86_64) are covered.

## How the formula is made

`Formula/rigswig.rb` installs the prebuilt binaries attached to each rigswig release, never a build from source.
It is written by [`homebrew/formula.mjs`](https://github.com/overfocus/rigswig/blob/main/homebrew/formula.mjs)
in the rigswig repository from the release's `SHA256SUMS`, so every URL carries the checksum the release itself
published. Each release is one commit here, titled `rigswig X.Y.Z`; `brew test-bot` checks it.

The first formula arrives with rigswig 0.2.0. Until then, rigswig installs with `cargo install rigswig` or
`npx rigswig`.
