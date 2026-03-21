class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.8.tgz"
      sha256 "c11647ad9779173d66790744c2e46a3af4e0ca1bd3c31888929ef30ea1dd1a57"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.8.tgz"
      sha256 "02903c9cf6e9327eb803d088911943013960ba638172888379854a195deb93f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.8.tgz"
      sha256 "fc247b5d707289f2e2b65f997bd6f7a1b7ecbc19dc26cd581d34fb87c6ff999a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.8.tgz"
      sha256 "64fe2bb4fa052acfae5256360d7d12ee8da7a60ade47ff20be9810999fc056e8"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

