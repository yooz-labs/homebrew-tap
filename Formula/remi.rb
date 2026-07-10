class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.19"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.19.tgz"
      sha256 "ccf10e41fee284b7f2b46d4bf2fddddcef0d6e4e73753a511169edca3940f484"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.19.tgz"
      sha256 "1df93cb732e4bfb50d81af4052e909127fbcb0ff5ad7d8b7b2a7197b37aff10d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.19.tgz"
      sha256 "49d3474aaa9b11fe4184d4a1fad50d99c71ba14ef2343243861e8e5a782e6b21"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.19.tgz"
      sha256 "608514304dfbb32485248234e46b411164da2a5d34815c9484893ef7b1d2f927"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

