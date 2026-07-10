class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.20"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.20.tgz"
      sha256 "20673459229ab26358bf976a2c358ec3f0aa833d53d1be60a33e9bbb13ce119b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.20.tgz"
      sha256 "68c59e5b4175151194c6041b692f5c723afaea30c33c07c95d0fa6d835ca5d18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.20.tgz"
      sha256 "90ae78ce9c32f7aacb64cd1afc3f6d8417f86590c233b2e8b477619e6220bf3b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.20.tgz"
      sha256 "584d451913b037de51cb750050a4e4c948d7e9b5dc67cf490df07b95d55625c4"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

