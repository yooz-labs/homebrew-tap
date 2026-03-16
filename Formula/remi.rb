class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.1.tgz"
      sha256 "789646f4c240559042d0be0a92a51747da1037878fb98f62f760990ca55e8607"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.1.tgz"
      sha256 "6be1167d74fd0295e8b406d57958887321f614c5e94c771eb6ab83d87e06c77c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.1.tgz"
      sha256 "8f5ec3a2b2638f93131139f1b01c6a2f92fd978bb1e4efcb2bf5d279507c3433"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.1.tgz"
      sha256 "6a37a38425f874cae64ccf3eb25b149d1a671cf42d530f3f520cb74d92d3c776"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

