class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.10.tgz"
      sha256 "b5c0049b31b5c347cac37a79f9b0a4a3c3fa1427f7baf8bbe9a7d646504b7717"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.10.tgz"
      sha256 "1ebe1d6b5cd940ebd32807a455fc487a5b7f5d375ea75837de373b0559e477be"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.10.tgz"
      sha256 "ab05f0bc7098577cde8c37caaf45d6befc1b2f4f936c6906aa6afa70727be9fc"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.10.tgz"
      sha256 "5b31c1c616027b18da072be2e89a8cdc43de299f754be8197257e1d6adfe5e70"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

