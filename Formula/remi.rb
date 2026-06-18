class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.12"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.12.tgz"
      sha256 "361ce52fee115b024bf98531f6f5c38a3842d0984ae79d1c9f546a0c4cd8db35"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.12.tgz"
      sha256 "3b1445f041763d6ce03979e27b1684fa204bbaf110b9d153731cd99f8dde2233"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.12.tgz"
      sha256 "d31e5d358234ebc1d117148c198553c90921234e97254d628060c8d0b7b817e5"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.12.tgz"
      sha256 "012b047693944b95202c97ccd074e6b6d17979cba2498649c4e8a819c62f06aa"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

