class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.3.tgz"
      sha256 "005efba759dc3b879646a0311113e7f51770d743ee8c8191162cd214df15898b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.3.tgz"
      sha256 "517d3db820c4f0ba6b73606ba422c4ccd3fd95b9829d89067edbf0c98a3b1dc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.3.tgz"
      sha256 "ea87741898bccc1bcef2c2512a8be1d4d3fb41547889b163b4f7947c05058f3e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.3.tgz"
      sha256 "3ef5a9d2ab85cd69ba2d6b9c107348c5524ef6de11332870e8baf98de17babfb"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

