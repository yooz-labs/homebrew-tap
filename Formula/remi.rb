class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.15.tgz"
      sha256 "9221db5bf346c28b7579481c84735f5ec7260129f17f8fd5893bd9431db8619f"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.15.tgz"
      sha256 "9fbb049c9e516c231072de2d76b4f4a8f92e7b3f12c4a6066479ec61844e5158"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.15.tgz"
      sha256 "b30f6457052e6a3806c3abb7104ac4fd3223eb0684d45c278ceced88f95dbc1b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.15.tgz"
      sha256 "ae0dd30bc07f41d84012a2a555fe136bb1391058d9c467ea2f235109946a53f9"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

