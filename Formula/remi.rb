class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.11.tgz"
      sha256 "4dde686a8932a8ec2af24e47890edf9cd38ac0f663669e9870978430c7e9fa5d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.11.tgz"
      sha256 "a97dc581e7648f10c8807e863547eecf0ce2781a4cf2b42901fde4ae55bc5d82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.11.tgz"
      sha256 "7009dc820c5e40fc2ae61a25d6bc5f50577978953ffd056a2f38d33871fb7620"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.11.tgz"
      sha256 "91ce337e3e2d0fabc8a69955b2b6430c6d6f52cf2892af568b1fe6aa014c0cba"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

