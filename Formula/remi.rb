class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.20"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.20.tgz"
      sha256 "7f6f66a227155534595c81f401c11eb59ebf4c299a6ec10e3b1406006d1e10f4"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.20.tgz"
      sha256 "c5c4cd45c4417940fe09886d0b8d6c7fff0546d11d7f6a29409758ff46f7ccf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.20.tgz"
      sha256 "3e7d8020562cd3bf782f146f6be0347456e239f2a54c1e6a14761b476ef08b27"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.20.tgz"
      sha256 "eb0fcd17c74ec3ab2f348ddc14f399791318d4d9bdc7f7506e6e3a17ddaa15a8"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

