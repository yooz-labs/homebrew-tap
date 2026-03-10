class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.11.tgz"
      sha256 "d437cde5186d29d6b4149ce6c4b26710b8375cf7c5f92268efbfa9cac507009b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.11.tgz"
      sha256 "d60538aa1b05c7111e0eb08213247650297996c5cb352b26c79740fa1ddd70a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.11.tgz"
      sha256 "89b8a71275ba84feca657c9495de9f94096a2bb56e4e345ec1204c4ce2f334e4"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.11.tgz"
      sha256 "1a0b4f46898204be37c6fa3d445ec283e54a425bc04d5a45affa86e70d9887f9"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

