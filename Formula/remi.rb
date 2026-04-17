class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.5.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.5.1.tgz"
      sha256 "cba4fca3727a63c3bac3251ac487b4c1f4d2180d37077968771a551c403b60c0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.5.1.tgz"
      sha256 "6df7cda9e421a2cf1adf59b5f64a6e3364d62c23d811224e9f5be2faf88e2ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.5.1.tgz"
      sha256 "89ac36b42239463b16cf266ef401713fea234f2e67d9b6688702b416904aa758"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.5.1.tgz"
      sha256 "e3134181392055ec6d2c194df0240309325b2a8a0f6cb4307459dd2ebcc92897"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

