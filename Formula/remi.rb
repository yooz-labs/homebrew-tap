class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.0.tgz"
      sha256 "502d00f4fb3783dbf739e189c8f7d2a4704d1c05f346fbf688c12b29b1d3c09e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.0.tgz"
      sha256 "9baf6e549a7e278211dcb510bd02aadbc096be67c2bd0b5fda4d3e33d8ef3ef1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.0.tgz"
      sha256 "9d79783c0a5a512f483a8fe17c1638e141f83e6e980679b9909c7d1712ada3be"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.0.tgz"
      sha256 "c06022eb89d40f586c9f58e670823bd424b267d3e8f8309e5d697f4bb0f0f4fe"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

