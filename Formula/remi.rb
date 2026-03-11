class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.13.tgz"
      sha256 "6ad6813926099b226208ef5f801418e581f53a54ca4a5bf7fdf2e2f4a86cba90"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.13.tgz"
      sha256 "b1f8e99cff64c723a518a12c64514db22176ea1872a7545259c2ef04fb337721"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.13.tgz"
      sha256 "a2d7560028cd364c0248396edaedca6bc093e1c888ff36e2e201611e7768212a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.13.tgz"
      sha256 "8965ecff52bdb822a7e7e1a9e461ef51a34ded53ab7ae108894571cc1e8301ba"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

