class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.19"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.19.tgz"
      sha256 "da85cbf2b9ad87fd9be02cbf01b46218bd6ca71b0ec78e887a058ae4f2bc9f38"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.19.tgz"
      sha256 "cc3a1802c840aecc6cb20e6bcb88ef4eae21a8d5bd026a163450523c971b62cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.19.tgz"
      sha256 "fc29f4006a114663cad693eda072eb701e339d5980484704cddc3ad7dc9efe70"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.19.tgz"
      sha256 "e3ed9ab961650580113e4aa6fdb0219d9f9eb85519b3768f088d7e9dbf8dab5b"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

