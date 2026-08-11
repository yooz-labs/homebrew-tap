class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.6.tgz"
      sha256 "9c75cf1957848004d2e0f3ec6bcda02c7340b7dabccb6148cb10015b1dbe41f0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.6.tgz"
      sha256 "858fb89e2d9d5450e4ef1f398acd27da2e566078ade96d63ec3ad05f66549f19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.6.tgz"
      sha256 "eea429a638e450de5cdeb7a0e21b603ba9a06cba3412e8425f12e1eb94375e54"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.6.tgz"
      sha256 "80eb4d04427b65c034b849059835d8d340da1e7c4d813d60de6b16e3f583c082"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

