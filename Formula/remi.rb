class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.11.tgz"
      sha256 "b3d5f856d8825fcb5b7e5b7b611108f6b63d6938c70e2da060e0b2dc65af6d24"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.11.tgz"
      sha256 "2a0d3b68d13038475236a89308a875c9df5f8c00704ec5e978f146096a9b5de3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.11.tgz"
      sha256 "256511b4323c442f6ea7b47eef6a251ced1abe8811aba019f50c6b4ff1337dd9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.11.tgz"
      sha256 "86fe49977c828a7effff6aa2eed2950e6ea72908287e7fd911ce21ecb1dfbeb8"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

