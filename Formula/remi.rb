class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.10.tgz"
      sha256 "0547ff1f097b329587ce1b40e9118ca8dc4a2d2931d96d541b084f23dae8b405"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.10.tgz"
      sha256 "ee674efdd0c22017ccf544e3855b1facc11a4b629c824431f5f809e3c40c937d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.10.tgz"
      sha256 "36bd3dbc2ba776e3ce83595b054f4073b545aa76f7dec67d605ed066985a7954"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.10.tgz"
      sha256 "3be7e3819ae279f3cdcdd2f1f6ab18a47d4bece7a39240ff67caae52f1337926"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

