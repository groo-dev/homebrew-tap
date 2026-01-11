# Homebrew Tap

This is the official [Homebrew](https://brew.sh/) tap for [groo-dev](https://github.com/groo-dev) tools.

## Installation

```bash
brew tap groo-dev/tap
```

## Available Formulas (CLI Tools)

### groo

CLI tool for managing and running dev servers in monorepos. Provides interactive service selection, parallel builds, and automatic project detection.

```bash
brew install groo-dev/tap/groo
```

[View on GitHub](https://github.com/groo-dev/cli)

### cl

Switch between multiple Cloudflare/Wrangler accounts. Manages credentials and configurations for teams working across multiple Cloudflare accounts.

```bash
brew install groo-dev/tap/cl
```

[View on GitHub](https://github.com/groo-dev/cl-wrangler)

## Available Casks (macOS Apps)

### groo-mac

Menu bar app for quick capture and clipboard management. Add text, files, and images from anywhere - access them across devices via the Groo Pad sync service.

```bash
brew install --cask groo-dev/tap/groo-mac
```

[View on GitHub](https://github.com/groo-dev/macos)

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
