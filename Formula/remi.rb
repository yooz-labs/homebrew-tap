class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.5.tgz"
      sha256 "f3fd4085ea841733dc23c67eef8f5075f7861418b9bb63b11284ace3b719e925"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.5.tgz"
      sha256 "4d3dd3ad8f02171c363301b8f583fc5911311146845ae4c472477b430e6572bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.5.tgz"
      sha256 "f7e5a4dfac14e53ef3e0995a6183b55bc3980816c4ea697d5943714ff9446d1b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.5.tgz"
      sha256 "2b62f013617b8961d949910c90f197d811a14a68c819d1189ea6addd2dc0616d"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

