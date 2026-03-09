class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.1.tgz"
      sha256 "09f569eb098865cdb4d1a58dab6d47b807d479f2f4c9512c330e4bd0502b0145"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.1.tgz"
      sha256 "3a4f7371117db3dfad7b70c173991392398aef3870b5205581048827a26cae92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.1.tgz"
      sha256 "a4654b8f5eb2fee0a505fe25ccc55b9cb4579ef06245bf960f78503497be31d1"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.1.tgz"
      sha256 "cf4b5c501d73d5e5f036cc301db21c7608c1a912a782677d58404cfacb7ce846"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

