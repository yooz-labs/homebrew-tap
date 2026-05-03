# Security Policy

## Reporting a vulnerability

**Please do not open a public GitHub issue for security vulnerabilities.**

Email **dev@yooz.info** with:

- A clear description of the issue.
- The affected formula and version.
- A minimal reproduction if you have one.
- Your name and contact for follow-up. We're happy to credit you in the fix announcement if you'd like.

We aim to acknowledge within **2 business days** and provide a triage decision (accepted / needs more info / not a security issue) within **5 business days**.

## Scope

In scope (this repository):

- Formula points to the wrong upstream URL or a hijacked release.
- Wrong / weak `sha256` checksum that could allow a malicious bottle to install.
- Formula post-install or install hooks that do something dangerous (download from untrusted sources, modify shell rc files without consent, etc.).

Out of scope (please report to the right place):

- Vulnerabilities **inside** a tool packaged by this tap (e.g. a bug in `remi` itself). Report those to the tool's own repository:
  - [`remi`](https://github.com/yooz-labs/remi/security)
- Vulnerabilities in Homebrew itself — report to [Homebrew](https://github.com/Homebrew/brew/security).

## Disclosure timeline

We follow **coordinated disclosure**:

1. You report → we acknowledge within 2 business days.
2. We triage and confirm within 5 business days.
3. We develop + test a fix. Standard fix window: **30 days** for critical / high, **60 days** for medium, **90 days** for low.
4. We coordinate the disclosure date with you.

## Hall of Fame

We'll list reporters with their permission once we've shipped fixes.

---

For non-security questions or general issues, please use **GitHub Issues**.
