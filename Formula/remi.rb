class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.24"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.24.tgz"
      sha256 "d89c333a577ff4a3bb591e05b205555c601dfa0703e603a91577d265fce94177"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.24.tgz"
      sha256 "5d719a4b74ba2b0f5e9470cdd57bc33aa49e2ec3806346656f038a09a94127a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.24.tgz"
      sha256 "18b954c953ad9e28848761c614b4489f676b003cda85ad4b7dcff1aee850db34"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.24.tgz"
      sha256 "51f72c9c9b7d0bb01b1dae73c4d9d0d320fd160888b3303a19cc0744cb16f147"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

