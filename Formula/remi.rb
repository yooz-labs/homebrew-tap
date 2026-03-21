class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.7.tgz"
      sha256 "6d0eca561d9255a51f9f5a8f3eb926fe9dedd666ce60ef2bb7c22442810bcb5e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.7.tgz"
      sha256 "cf2bf5d66d5d96b207b18aa6f0d8dcc2e3795dbb0cf347fe9fbfb44f5c2ed33d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.7.tgz"
      sha256 "c79de97a13aef71d4e60f75cc18ef76bf1772907cb93ab6d2b8dca21e2e15f36"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.7.tgz"
      sha256 "b50c6f5f1aaaa9f86c9e1dc162a8d25d64d3f71a420c2bdee9b617629cdd92c4"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

