# homebrew-tap

Homebrew casks for my apps.

```bash
brew trust watanaberyunosuke/tap
brew install --cask watanaberyunosuke/tap/groundkit
```

| Cask | App |
| --- | --- |
| `groundkit` | [GroundKit](https://github.com/watanaberyunosuke/groundkit-ios) for macOS |

The GroundKit release workflow updates `Casks/groundkit.rb` when a version is tagged.
Homebrew loads casks from personal taps only once they are trusted (the first command). GroundKit is not notarised, so macOS asks once before it opens (System Settings > Privacy & Security > Open Anyway).
