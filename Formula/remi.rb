class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.4.tgz"
      sha256 "eaa9beafdf1e96b75d7b949b3579eb0f27d9e7b572668b42c7a97345482046bc"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.4.tgz"
      sha256 "b23fee88605fbc6c474ee671bc6c43dade2314c4ca52baba7880b7bb62433c5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.4.tgz"
      sha256 "feb03f1128c923da4a0ed9399f1d31989b475d38f8e37a1a638a2299269dbdf9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.4.tgz"
      sha256 "2fbf387e074a96a1bd08cebf8b046579f32075c4a256099d2ca0bdc00d962c20"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

