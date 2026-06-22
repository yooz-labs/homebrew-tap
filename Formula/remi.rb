class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.15.tgz"
      sha256 "147af49ad6dd2f3f072497ae1aa7ca4d930b056c915647ee77ec6ae65c21c861"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.15.tgz"
      sha256 "7a39410a736e63ff3d794ae915ba08f62fd3e3f2d1df37517e33da683fffa7a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.15.tgz"
      sha256 "4d4d4abcb6a0f8d20c8f865edb2bc727d2ef2a1ebff20a641a45feae4f2418c0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.15.tgz"
      sha256 "b00518ab3b3a21792cb8654c0e47988c56e91f91bc7525456cb78da2cd9344a0"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

