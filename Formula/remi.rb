class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.16"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.16.tgz"
      sha256 "64ea56bdc1a0427cf9d79e5b28841c5c2610e9fa8258cce24fa364ee1e1c67e1"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.16.tgz"
      sha256 "ea52d90af482fab70178c507dc976badaf83e2b50eb312b3b21b130029fdb0d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.16.tgz"
      sha256 "a81b277e5d2e84f269a1f7f1f3d7ac3b174c255887ccdeeb3fae44057759982d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.16.tgz"
      sha256 "f54640cacb264d2f523fd19f718439b29c6e385d7e9cfa239a3c6aca3a3104b6"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

