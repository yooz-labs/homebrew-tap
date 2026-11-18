class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.9.0.tgz"
    sha256 "3b75343b6b7d23bbb84beccb8b6a04e6281c56b51d068d9f132881459d65d83a"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.9.0.tgz"
      sha256 "3feec1d8dd8ee59144be4fd83f4dcde7099dd344e17bc1ad2d07dde4527068c2"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.9.0.tgz"
      sha256 "a83f0ce02bef7c8bacc05a7a9295f2f6968fb20f9016819e186ead91e7eedc5f"
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

