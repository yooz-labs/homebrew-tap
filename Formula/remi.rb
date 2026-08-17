class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.8.tgz"
      sha256 "9074203f556f15667c9f5a0f3767c5d731d82f7833c53fad620a68e1a1f65eca"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.8.tgz"
      sha256 "e78958c11852067b2c8d04d46f8e7ba7f98e0130e7966cbf8dd3bd90a76858ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.8.tgz"
      sha256 "e8b308cf26f5be099433e451e32a598cd62af400ccddb751b5b8e9c1913a502a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.8.tgz"
      sha256 "2362efa3d87628f7ff16f2313de7b7524b71aeafafc1c540b6220ee99f93d1cd"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

