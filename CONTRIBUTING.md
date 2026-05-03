# Contributing to Yooz Homebrew Tap

Thanks for considering a contribution. This tap packages Yooz Labs tools for Homebrew.

## Before you start

- **License agreement**: this repository is licensed under [MIT](LICENSE.md). By contributing, you agree your contribution is provided under the same license. The ecosystem licensing strategy lives in [yooz-engine/LICENSING.md](https://github.com/yooz-labs/yooz-engine/blob/main/LICENSING.md).
- **DCO sign-off** (required): every commit must carry a `Signed-off-by:` trailer.

  ```bash
  git commit -s -m "feat: add formula for X"
  ```

- **Scope**: this tap is for Yooz Labs tools. If you maintain a non-Yooz tool, please publish it in your own tap; we'll be happy to link to it.

## Workflow for new / updated formulae

1. **Open an issue** describing which Yooz tool you'd like a formula for, or which formula needs an update.
2. **Branch from `main`**: `git checkout -b feature/issue-N-formula-name`.
3. **Add or update** the formula under `Formula/<name>.rb`.
4. **Lint locally**:

   ```bash
   brew style --fix Formula/<name>.rb
   brew audit --new-formula Formula/<name>.rb   # for new formulae
   brew audit --strict Formula/<name>.rb        # for existing formulae
   ```

5. **Test the install**:

   ```bash
   brew install --build-from-source ./Formula/<name>.rb
   brew test ./Formula/<name>.rb
   brew uninstall <name>
   ```

6. **Commit atomically** with concise messages (under 50 chars on the subject line, no AI attribution).
7. **Open a PR** against `main`. Describe what changed and which versions you tested against.
8. **Address review findings**.
9. **Merge after CI green**.

## Commit style

- Subject: imperative, present tense, under 50 chars.
- Examples: `remi: bump to 2.0.4`, `add formula for asc-cli`, `fix sha256 for muxer 1.1.0`.
- No emojis, no AI attribution.

## What not to commit

- Bottles (binary releases) — these are uploaded to GitHub Releases on the source repo and referenced by URL in the formula.
- Secrets or credentials of any kind.

## Questions

Open an issue, or email **dev@yooz.info**.
