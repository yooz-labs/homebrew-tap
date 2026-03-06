class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.2.1.tgz"
      sha256 "2f49888b3febcef0e9a6df8c48a5ac7f9863c670da9511d873a545fc73557321"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.2.1.tgz"
      sha256 "a242dd8d3f7e588351daa5e67b6e2159378359cd4a908846381fb6026aa6c10f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.2.1.tgz"
      sha256 "b4f5cf29b9232587603df7f88443ba4904d53190198a4f570d1f8893c254fe43"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.2.1.tgz"
      sha256 "667bbf8eea2b2e25c6e2be3079ba636ee4b7c57dae5c4c9acf0e350313663fd3"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

