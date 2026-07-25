class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.23"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.23.tgz"
      sha256 "9ee949f9da4d6c6a12b9a2502e051c106e04a7bb3575f4c1ed8983056fba0646"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.23.tgz"
      sha256 "8a9f7bc149e6f51933b756b06268cbaf8266c83eb2618789ec50942878488428"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.23.tgz"
      sha256 "e3841fdabc22dd2b6ff76bfd47950df64618fa680cf82dc49f0f9d20596706b3"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.23.tgz"
      sha256 "b51262b4d7dda30d6b19bf56bce069787cec13dc95261cd0a3e3a335fb63cf7b"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

