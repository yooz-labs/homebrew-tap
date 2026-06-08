class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.3.tgz"
      sha256 "c264648a6a8a3909e628503ece951142a6cb001a4541b34c451f2cd5d7427954"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.3.tgz"
      sha256 "8464a554fedec3ed703e7222a168cc9bab9ba6cc8a06cdc961ecf6ccd4e9ee2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.3.tgz"
      sha256 "b57e59bd995cac25e1ca0239d06145be66e75d697f2709df74f2dbeb8faa983d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.3.tgz"
      sha256 "ba3afbfc958f47018244554b12f083015f23b665b93686fc50d9fccd567232c9"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

