# homebrew-tap

Homebrew casks for my apps.

```bash
brew trust watanaberyunosuke/tap
brew install --cask watanaberyunosuke/tap/groundkit
brew install --cask watanaberyunosuke/tap/clouddupe
```

| Cask | App |
| --- | --- |
| `groundkit` | [GroundKit](https://github.com/watanaberyunosuke/groundkit-ios) for macOS |
| `clouddupe` | [Cloud Dupe](https://github.com/watanaberyunosuke/clouddupe) for macOS |

The GroundKit release workflow updates `Casks/groundkit.rb` when a version is tagged.
Cloud Dupe tracks its latest GitHub release and selects a DMG for the Mac's processor.
Homebrew loads casks from personal taps only once they are trusted (the first command). GroundKit is not notarised, so macOS asks once before it opens (System Settings > Privacy & Security > Open Anyway).
