class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.0.tgz"
      sha256 "62eab96a1d47f754e73e8644545d5239f845a74b3f49ae704eb45304fc785d74"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.0.tgz"
      sha256 "992379783ee89651b7f7629ed246af72071b76aebee7751106b6da5c05d5a3d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.0.tgz"
      sha256 "6e2a22d2252aea929c695a0c4e8169912ed090fa6aa5dbcee00e6cd5d9d859a3"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.0.tgz"
      sha256 "274b2640e28bed1ba7ef1d8fb47edaf01ee2a5b69261c240f02d7f613a16596f"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

