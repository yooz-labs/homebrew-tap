class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.12"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.12.tgz"
      sha256 "36133f6a82e28dff8e945653f7fed107f31852112a2f296b93b4bbf70e09d6cb"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.12.tgz"
      sha256 "e6bb83d8f900726966fabafff1e387caf883a5177bba012734639a64c3bf5369"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.12.tgz"
      sha256 "c7ca7d9646c52e1dbf5995e4c1e275eefa5dc1126148e350229163426cf43a39"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.12.tgz"
      sha256 "bc6ee8f8115fdf22b6524a38a38468dc2f7af3ef2c465d472010d7a779332599"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

