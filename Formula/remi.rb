class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.17"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.17.tgz"
      sha256 "edcd14fc5ae4e4e8b70501a299ed7ea58ccb17df066128c204e8c2c52dd45386"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.17.tgz"
      sha256 "556d8a77b626efbc999bbdf25fb2c81940b3af96b521293f07b4464448643319"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.17.tgz"
      sha256 "55939ba67144e8732ca1bb1b7de50b8c4b31f365dcd1739332f93504e4048983"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.17.tgz"
      sha256 "d69177134bb4421de4797670614577b9bfca0d0df84e56cb92d377cede53648d"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

