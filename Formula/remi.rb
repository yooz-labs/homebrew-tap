class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.22.tgz"
      sha256 "035ee4f3f8f77dc1dc06f8111f8cde0906a76dba9aa1d177ae3b6ef29ecc41fd"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.22.tgz"
      sha256 "bddc8bee2e3e38624da09dcb7064d045474bc726fdf01e84837b0f44650b838e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.22.tgz"
      sha256 "4b12f91b9df98523dfb10d903f2e8031997bcbfd71e0e36883af14453cd77dcc"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.22.tgz"
      sha256 "2f3bf80c43c14ee7e33f42e31800f18b650b3e2cee0fa271ca4ce5565ac26c2a"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

