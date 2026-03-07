class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.2.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.2.3.tgz"
      sha256 "1f7c974a8cc7e9d4b12bcd3cc35a42810e1af83879a845ffb7fd1a547ac19470"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.2.3.tgz"
      sha256 "e698c73c32898639330975a5eff175c09ffb49850bdc245a22135682d9d72879"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.2.3.tgz"
      sha256 "009ed574367cbfcb92f24ea1c446f236ff236b8b3e6b59b76199e7ad153ca3b8"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.2.3.tgz"
      sha256 "821c8d46d794b1018b07f9ba06537fb6b7d01aba784b01c81b5e4d5d15f7f084"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

