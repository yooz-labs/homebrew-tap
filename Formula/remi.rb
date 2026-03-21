class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.10"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.10.tgz"
      sha256 "c60f9fa81fedb0bd9998829e481ae281c14cf8573607659e4aa425eb76b78754"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.10.tgz"
      sha256 "06eaf052983262c567db5e7141325d8e321ba24bd03c6758902c0b055fa47e27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.10.tgz"
      sha256 "2c61d204b90042670e08b377f48dab6e2b043192157bb4a5801298fd31647d4d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.10.tgz"
      sha256 "31a1d6d6f1da78cf5281e674ab9c599b771a78780b7f549cbedad4c9a213cefe"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

