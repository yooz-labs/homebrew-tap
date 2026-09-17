class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.11"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.11.tgz"
      sha256 "8cbdc62d53ebd55d8448bc1ed1e5c200ff70de6528e81424cf753d2c07b679db"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.11.tgz"
      sha256 "a661da454d11874f7bc2f8fc142d50ee13fb3f3c69fd047ce033d078789de95b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.11.tgz"
      sha256 "af7286c9ca688cd739dedcedacfdfc25a65de20563d2cc59c21663ff6d22006b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.11.tgz"
      sha256 "a8096454fe7fefe6f370125dc83812b73991da615453a48daf069258deedaa7d"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

