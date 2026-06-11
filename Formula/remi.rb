class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.9.tgz"
      sha256 "39775958cadcc47afc123d7c096e0f1d776ce3d6ee75eb14461f35adc75cfa9e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.9.tgz"
      sha256 "381342e0e3fc985fc0cd21c28d793c64ef7972e69b1340a4de4cdc234952ee7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.9.tgz"
      sha256 "6b698388989f418cbdbed494bf449d30efd17895c861e3bb58b52acb8901cc30"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.9.tgz"
      sha256 "4612168ceb03afd3e2f3da7066f21cf11f499f1929062746cd9ad6a30340b815"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

