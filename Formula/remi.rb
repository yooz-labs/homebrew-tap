class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.12"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.12.tgz"
      sha256 "b40e98594b9f0b08d66c69307c15b1c3edad89ff476aef7c464447a223810651"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.12.tgz"
      sha256 "f4f8c255bb44b9e74fb5b31bc2012dc68dc44ec576222692284e6a3d52b91c6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.12.tgz"
      sha256 "78ecee6c06af045da288fdb25e5edf63d961891448ebc2d3d669ab47c697d5e9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.12.tgz"
      sha256 "031fc8d0fe08757c0533ecd2186ffd777e3e78f09dc1f8cd36ec71f3a0185e3f"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

