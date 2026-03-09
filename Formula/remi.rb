class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.5.tgz"
      sha256 "4df1e7dcc648e2888b62044411ff77a1caf0be4ece8c0f69bd9bf19bb5142a9a"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.5.tgz"
      sha256 "226bb15bd05352dafd526ebed9a6b2b39184b5d1b4a6b17d5afcb0b409502f5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.5.tgz"
      sha256 "de46e6165f562f68db572e5d8804c2e5b6f37abd9e00ffe9c5ef593fa748916b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.5.tgz"
      sha256 "afa765956394e11dbb1b0e5c2a2f0499ad3a6614d51c7c79320d062e79b1bb3b"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

