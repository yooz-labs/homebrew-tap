class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.1.tgz"
      sha256 "fa66f87b455a699612b7a5569b1da746c7e7b8204cbbe9146de939a7b2cd576f"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.1.tgz"
      sha256 "c60687d5d36d03fa683c593c24107a4e4c47634306cbd64228b42abcd0e739f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.1.tgz"
      sha256 "07b22ed9dd686459e3cc6df4cfb7a133928376e2b0980df67be100c656d05372"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.1.tgz"
      sha256 "ed4a238cb991f53311be8a36acb585af874b024e00f291dd6c0af37498923660"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

