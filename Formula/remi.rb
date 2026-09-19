class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.13.tgz"
      sha256 "c9a78d0512c343230153237e8269d14355ee162f72327c5014816dc403cbd3bc"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.13.tgz"
      sha256 "3388f2a3bb15af96f5cdedab0a92e99d030f0df104c4833efb794431c6e97034"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.13.tgz"
      sha256 "fa8d3d4eab6d11d449dfd4ed71e6dd6d685fa712fb475314d6d3ceef2592de44"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.13.tgz"
      sha256 "14ceb69e18e88fbe75214684108c3d1c3005b902d09e1f263571a248ad15a04e"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

