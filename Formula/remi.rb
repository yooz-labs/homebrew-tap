class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.14.tgz"
      sha256 "63618d36dc9993f0ad6498d42784aa7d34fac0c3388445702db8afa0e4028147"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.14.tgz"
      sha256 "d9f022710a239f031e54d6297e9c3b1ae21fa7cc4ae15ecf1b7b0bab0f1e8a55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.14.tgz"
      sha256 "4578442421c417a360047fb54fb3c361fa1d5ca1d02e3cdffab6f5c948fe812a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.14.tgz"
      sha256 "871f2b2fbbd3dc9154ac13710a761801efa9c8265fdfd8e1c5d9df812281f941"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

