class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.8.tgz"
      sha256 "f945dd9c5e83fe1bb7ebf0a937a3355d88d81a056016071ac88fc868e95a062d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.8.tgz"
      sha256 "6ff6cf4ff357d71d6b2106b0e9eeeec480120803213b4393e9e9f03984a6bdc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.8.tgz"
      sha256 "f49e067fd1a2fa1163691933c53da0ee26693a77ce40eddbd0c07d4d9f45108c"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.8.tgz"
      sha256 "3e88ff946cd66600d4687cf99e5e22ca8ffc09a299b83743e7b07c495e8dd664"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

