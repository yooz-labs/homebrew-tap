class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.0.tgz"
      sha256 "2e85f49b12d9505005ce3b73d460623a7929ec8a7f21bdf8658528efb9c6a32e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.0.tgz"
      sha256 "6568851ef5bf57a990667bc57a8408eb63ad18324b8098926a83b01a7683d392"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.0.tgz"
      sha256 "09eebe6a8754b9cca7638f3bb3efd112f3626c72af1a6ff671e5b042be0a0a65"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.0.tgz"
      sha256 "b9f9a2f98b7544335802d669ae97f2b8fd1c41911270365124fd7108e77773e4"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

