class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.8.1.tgz"
    sha256 "857027fd0415dccb7b6a2fb57ae505c926b306d456cd01abf26a00801e18eff2"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.8.1.tgz"
      sha256 "ae191f9c7e63b3a7f9fbced5ea9999e532872244b5528cfc562c337419b43686"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.8.1.tgz"
      sha256 "ce5a432b322388c85216d6773228112a5277548bb4dacb63f283ff3e8d7043ac"
    end
  end

  def install
    bin.install "bin/remi"
    # License, notice and the bundled packages' notices (#1131); a tarball from
    # before #1131 has no THIRD_PARTY_NOTICES, so only what exists is installed.
    doc.install Dir["LICENSE", "NOTICE", "THIRD_PARTY_NOTICES"]
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

