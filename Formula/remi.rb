class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.4.tgz"
      sha256 "bb04ed8a0b05daefb943aabb6acfb47e37feaf3f66807c92fc93f2189a5cf396"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.4.tgz"
      sha256 "eca7208dbe59c6caee66b43d95bad314e8674522fc0e396422cfcfb3a39aec4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.4.tgz"
      sha256 "4a5978d9b8e2221af6a52fda86b4df455094b0929b0c357e724739fe6df69b81"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.4.tgz"
      sha256 "05742c8bc92885147060bafb629559605538188cb195d246b4f670db7077eef7"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

