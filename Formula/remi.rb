class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.2.2.tgz"
      sha256 "c7cc2f246b30b6defbe1a83e9d0069d49b2e6471bbbee86eb2b508bda783c0ff"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.2.2.tgz"
      sha256 "c8497b135904026d1c3439615810636120ff6b765939b5041164822121d17a64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.2.2.tgz"
      sha256 "f593c83099c7ed5052f9292ebf5d490aa13be1b74ea32b8b0ce88e9b972907ee"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.2.2.tgz"
      sha256 "ce4a0e1b7243060836c81213151548c0cdfdbf7ec531d36c44fb1cf7a5a4eca1"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

