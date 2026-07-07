class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.18"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.18.tgz"
      sha256 "d9aee92ffe439ac1a382ca593a05e64b22ec40c238f622a3a7d0f088814a2c6e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.18.tgz"
      sha256 "f1e09d78a80a8d87cd970b992a43c80648b9624562fd732d2646d4b437ceba48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.18.tgz"
      sha256 "ebd0f4d620b8629a55c017f3bdd310e1f7e4c08628dfb3ef888a2ebfdece86ea"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.18.tgz"
      sha256 "f9f17d8521877099264dddcfb9e1e3da44303372618452bbd899c5b3104aac74"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

