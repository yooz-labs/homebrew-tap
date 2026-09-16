class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.10.tgz"
      sha256 "e1554ccaec48fd027c386674a778781886830906ecd227b1732dd181ee6b9abb"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.10.tgz"
      sha256 "f70d2df9424a854432a142a88cb7aee747890099cfe546085fdb85913a436a56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.10.tgz"
      sha256 "dd069cc184ac382f5c0903f5997ba23a25c3ff5d28661fd00f4e88d947fad5df"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.10.tgz"
      sha256 "a5dadb3613df379ade6b7ad22f516e911f1148c8730a1541ee0885d558748bb6"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

