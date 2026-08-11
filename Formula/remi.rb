class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.7.tgz"
      sha256 "1a743e95a8a213d64c1fe4a9326a2957008cbe15b83ec4e4b747e82eeb01cc10"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.7.tgz"
      sha256 "a2892b4ef38ec95443285dfec06712b1be1b1954867912d9d8a029a3a680334a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.7.tgz"
      sha256 "d0788916773745ccf78894be8e2d3be882f16ada24556d38829442120896b0a8"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.7.tgz"
      sha256 "2d77b5b18c08ceffa0476cc10048aae05ad2dda41c9f83719ddc0f4e09bbc4eb"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

