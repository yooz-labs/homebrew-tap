class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.16"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.16.tgz"
      sha256 "07d2650943df2b0c502f00b3c130e67cc1efedcd127c2f2b2581a908992bcdfd"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.16.tgz"
      sha256 "5cdf2835856d47257a3693e0fc2cc5984375c22f13c3d6befe5a0c7661a69caf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.16.tgz"
      sha256 "9ff07db1b154e821c74be50c23be296e763cff1931c97ce84ef4756020f228f8"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.16.tgz"
      sha256 "68b48f7bd5c61efcfb90b3a6a68d1fcab1d4136b202ae25b6fe78bafab32ae28"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

