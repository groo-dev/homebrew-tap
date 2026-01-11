# Homebrew Tap

This is the official [Homebrew](https://brew.sh/) tap for [groo-dev](https://github.com/groo-dev) tools.

## Installation

```bash
brew tap groo-dev/tap
```

## Available Formulas (CLI Tools)

| Formula | Description |
|---------|-------------|
| [groo](https://github.com/groo-dev/cli) | CLI tool for managing and running dev servers in monorepos |
| [cl](https://github.com/groo-dev/cl-wrangler) | Switch between multiple Cloudflare/Wrangler accounts |

### Install groo

```bash
brew install groo-dev/tap/groo
```

### Install cl

```bash
brew install groo-dev/tap/cl
```

## Available Casks (macOS Apps)

| Cask | Description |
|------|-------------|
| [groo-mac](https://github.com/groo-dev/macos) | Menu bar clipboard manager and quick capture tool |

### Install Groo (macOS App)

```bash
brew install --cask groo-dev/tap/groo-mac
```

## Updating

```bash
brew update
brew upgrade groo
brew upgrade cl
brew upgrade --cask groo-mac
```

## Uninstall

```bash
brew uninstall groo
brew uninstall cl
brew uninstall --cask groo-mac
brew untap groo-dev/tap  # optional
```
