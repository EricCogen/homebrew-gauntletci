# homebrew-gauntletci

Homebrew tap for [GauntletCI](https://gauntletci.com) - a deterministic pre-commit change risk detection engine for .NET git diffs.

## Install

```sh
brew tap EricCogen/gauntletci
brew install gauntletci
```

## Usage

```sh
# Analyze the current git diff
gauntletci analyze

# Analyze a specific diff file
gauntletci analyze --diff path/to/changes.diff
```

See the [GauntletCI documentation](https://gauntletci.com/docs) for the full command reference.

## Updating

```sh
brew update && brew upgrade gauntletci
```

## Issues

Report bugs and feature requests at [EricCogen/GauntletCI](https://github.com/EricCogen/GauntletCI/issues).
