# Yooz Homebrew Tap

Homebrew formulae for [Yooz Labs](https://github.com/yooz-labs) packages on macOS.

[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.md)

## Install

```bash
brew tap yooz-labs/tap
brew install remi
```

## Available formulae

| Formula | Description |
|---------|-------------|
| `remi` | Remote monitor for Claude Code CLI sessions |

More formulae are added as Yooz packages ship distributable binaries. Open an issue if you'd like a Yooz tool packaged here.

## Update

```bash
brew update
brew upgrade remi
```

## Uninstall

```bash
brew uninstall remi
brew untap yooz-labs/tap
```

## Reporting issues

Bugs in a formula (build fails, wrong version, broken bottle): open an issue here. Bugs in the underlying tool: please open an issue against the tool's own repository (e.g. [`remi`](https://github.com/yooz-labs/remi)).

## Contributing a formula

Yooz Labs maintains this tap. External contributions to add new formulae are welcome if the underlying tool is part of the Yooz ecosystem. See [`CONTRIBUTING.md`](CONTRIBUTING.md).

## License

Licensed under the [MIT License](LICENSE.md). MIT is the convention for Homebrew taps; the underlying packaged tools each carry their own license. See [yooz-engine/LICENSING.md](https://github.com/yooz-labs/yooz-engine/blob/main/LICENSING.md) for the broader ecosystem licensing strategy.

Security issues: see [`SECURITY.md`](SECURITY.md).

---

*Maintained by [Yooz Labs](https://github.com/yooz-labs). Contact: dev@yooz.info.*
