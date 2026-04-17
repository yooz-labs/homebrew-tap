class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.5.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.5.2.tgz"
      sha256 "4ece15e1cbfef9634fa391a3295c7556263e9995b8575909e80ba843ba44d968"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.5.2.tgz"
      sha256 "1b83a487cdb7ed4b84ecb61188981b080c52638cb1b1b18414e543cd30a2a337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.5.2.tgz"
      sha256 "42fc56115ba500f1aa409c9e1e87c4214e47fcd5c1795258e1f928cb460d8e24"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.5.2.tgz"
      sha256 "cbd3f35b4033e7592cae273cd4f27c2d50b8b3a86b44b4949808e52c92c0e88e"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

