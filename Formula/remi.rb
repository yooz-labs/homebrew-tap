class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.15.tgz"
      sha256 "2a1617063a53f7146e9ff870f9d51ce2d770242d83b44802b35bce35e0f2f477"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.15.tgz"
      sha256 "4b4d7f54478fcd4fd492829855860932941bd52a0b49dcd9f8da21ad03660fa3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.15.tgz"
      sha256 "d552ee6661f24cda99b856306c76a1c4a58a2b3a0da8ccf567175935f60d3764"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.15.tgz"
      sha256 "8fa7903ea8229c1a6392052942dc7b1cd1ad1d84db1fd7295eaa0e47fd326fac"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

