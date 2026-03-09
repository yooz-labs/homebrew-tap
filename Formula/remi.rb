class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.2.tgz"
      sha256 "63568f953b26538a233d874bc1a13b78b31004615cdacc8b3fd051f039f63ba0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.2.tgz"
      sha256 "a1545134408452d41f5cd8a129e1fe6c7e705bf47ce96cf8cbfb80e411e4c84f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.2.tgz"
      sha256 "a004c82f372848e00de257dde06a5470ef12f793b5b7d134a5857eca79ad30b9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.2.tgz"
      sha256 "fcd2a85a6c6259b7ec4d99881b80e63872a49f0a6a18ed043fbee7ac105d2cc4"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

