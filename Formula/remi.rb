class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.9.tgz"
      sha256 "e03f02fe9e541aa80ddd4d811767c93950f12a4e60fb8c17f484beb214984e28"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.9.tgz"
      sha256 "86f67c36c3ed65968d5328785dfac5be892074584e4d2b4a4ad7f5bb516e19a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.9.tgz"
      sha256 "3d574c6ad8f960cd233f2c31c9902d94354251576553efef5a8eb85d8e079c99"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.9.tgz"
      sha256 "f927199ceb75383276ae353b4498af2513c5620b075842134e6ec7e45f88398b"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

