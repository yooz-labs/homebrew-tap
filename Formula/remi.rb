class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.21"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.21.tgz"
      sha256 "3e446a7a84b36b944ebc0f86cdfe7cea3805ab9b9526720d50e86949be629331"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.21.tgz"
      sha256 "df1aeb64d81a5dc33a4701097611425008414030255dcd6584f3a5380f8f5d1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.21.tgz"
      sha256 "e51fcfb8b37b0bd28d7839cf79e63d00e50d3780e3b6699d4a2b6d2079d53844"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.21.tgz"
      sha256 "44c6a9d3a4d28d68dac04b4e9a2bcf610fcb2642b7b026196ffaba032af9b15e"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

