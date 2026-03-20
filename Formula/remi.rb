class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.3.tgz"
      sha256 "7ade2abbd9d6e0aed6ff7ec30055d6b4b35c966367799624ddf2c7b5ccbab331"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.3.tgz"
      sha256 "89856625c85df9740c297df39e469ceaa7a22801639132d9040efe08f2618b89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.3.tgz"
      sha256 "4bf4e65218507c72476f929e7dd3a744786bc1f8c023440ab1d3e6915dd6912d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.3.tgz"
      sha256 "fb16ac9cd2bdc6a3f3732a5b8fc2fcde0fb567af1853a9d97bcdeb43184e2249"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

