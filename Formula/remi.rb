class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.8.tgz"
      sha256 "ca233fc80dcc03fa8cd3e9a929dbccf1d2105a6aeaafee120dcf583385367026"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.8.tgz"
      sha256 "f738031b0f5d32bb2332dbb7630508f9d25c3a9efe1d80b3ecd51c8b3bcf63db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.8.tgz"
      sha256 "a270fad13637b04409008b010be7ce1a867ca0bcbbe207cff6d4035337633ce7"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.8.tgz"
      sha256 "65cf57a15c9282c5c4b28a94cf3c991fb4565f17ecb3245e78323971bd2b78f3"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

