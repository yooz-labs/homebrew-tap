class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.13.tgz"
      sha256 "dcfd2ec49c456227c049e4b46d8d6a4792b72c3e83567a697f9204ae9bf3b929"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.13.tgz"
      sha256 "99bf9c110f5e71440ad685998e681c33b44976c6070d710f5b43db47494ac170"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.13.tgz"
      sha256 "e117e93e203bd94fdb3e7c12f152a54eb6eb55d6282dbf602f1f66c52c005e8b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.13.tgz"
      sha256 "30f35506a4817bc600f1bcdb7ab625ac77c89f6b93b564a28aff05a3545424b4"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

