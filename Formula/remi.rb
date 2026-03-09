class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.3.tgz"
      sha256 "d96778c5710619331ceaadc6bd1febfd51ba75aaeec952da118da3fc326e6c20"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.3.tgz"
      sha256 "0dfa1c59c3fa2faa4fc46ac4e338f8ba2fc4d1cd366916f118557add9cf9c630"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.3.tgz"
      sha256 "a4f36f64bfc9214ee5d03599854302fccda03bd063bf0ad339d56c1d2dd1e8f8"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.3.tgz"
      sha256 "8905a84e47bb4a2c0ca6b6b6a77913331c014e60076a5c098d4c51cdd0efac9b"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

