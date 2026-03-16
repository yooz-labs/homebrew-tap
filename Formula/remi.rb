class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.2.tgz"
      sha256 "1dc716770b628ac766ccb6905edeb43cfa6ff0b16cc0d4e5c3d8a54e56d53cb0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.2.tgz"
      sha256 "1adc4ea6ab5235b18ac70b61ae13fb95ecbae01c8f1bfdca5ca58d1c692641a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.2.tgz"
      sha256 "72317ba11e50ac848eac76a8e577e8f605c8d386113d32ffc5fa792a529ff9e5"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.2.tgz"
      sha256 "301254307ffcd5d9b4a3178c369aff099911eb056047a71d5f8882092a2a42e9"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

