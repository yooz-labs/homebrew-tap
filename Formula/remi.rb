class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.2.tgz"
      sha256 "b13d3d9183293a54f75f4ee1eccbf18065a0934a57218df1f662e9988b10123d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.2.tgz"
      sha256 "1c05b7552dd497ef112132aad0eb71a02dcef3a86f9e86f27e2f42bf12ddb334"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.2.tgz"
      sha256 "885ddcdbd4387e59c27a39ad49fd1f506046e7dc1b643481c44b0f2dec300b8d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.2.tgz"
      sha256 "430b7cb1f3e01bb03e4577bdac063bd271e22164a2d87da5cacc398a9b0a2b42"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

