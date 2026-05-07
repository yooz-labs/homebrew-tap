class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.5.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.5.3.tgz"
      sha256 "3476d9537be1a3fc1d5eebdba92a1203a33a77f2002640e13c79b6229438d20c"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.5.3.tgz"
      sha256 "f42afa32704d70354a10eab64f0b1a13705da9e3e580226e78c723695847ccd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.5.3.tgz"
      sha256 "f4a6d0a2d2ac959239f34970be280bb096f55c08357143939805f85a1a1b9ae9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.5.3.tgz"
      sha256 "e523f4961f511d1e1979d29d2bfb5c0fdcae13fcdc9c3b35a001e49db9ba1fef"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

