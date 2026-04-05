class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.21.tgz"
      sha256 "2bea00b1b378bae6adbb67729514f950f8c3a6b33a967fbd970a1f6e3431272c"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.21.tgz"
      sha256 "753f8536b3be5c6556587c94a48dd9e39018c5259fca279945e20542d1365d42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.21.tgz"
      sha256 "dfc912122f12b9ffd97cf2b2b756cb8e175dbc448912af6b936d209349167bcb"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.21.tgz"
      sha256 "b629e10c13080b8449a2511ef2a81be971e2b23d379a3904f1ed155c9c6cfd9c"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

