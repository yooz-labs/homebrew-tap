class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.14.tgz"
      sha256 "1aec07a952363d2ec09d46d2353697fa2d1d0f88db0ca897f90e58bc9b75049b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.14.tgz"
      sha256 "2b3ab311d164e724fee6e58940b4c78b0eed3ac5d21d5dbcebf51ed93d4f8fb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.14.tgz"
      sha256 "dbf7372a5727521d990e8eb0abd1db1d105af6987b4d13355f29ff3d8201d4d7"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.14.tgz"
      sha256 "3ba8722ca5d9980384ff020a2e443024d7f6a192a9dd69a28a298f0d7569817d"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

