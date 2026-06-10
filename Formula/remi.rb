class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.7.tgz"
      sha256 "55ac93363911178c9929597cea2f65b6311690d5e0a618632e74483119eabf8a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.7.tgz"
      sha256 "311a805e20ef647e8a3fab2c72af467f9a9a3b78aa8e27776bb34fa45ff14191"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.7.tgz"
      sha256 "5975f0d19cb7bb19e1addb272038f3a3bc98b8e6845fa3c49a8b1e85c82adf76"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.7.tgz"
      sha256 "4c77da81c6eac0acfeffa18fe4b588b6a35d6d7a07aa8438b42d43064bb478f7"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

