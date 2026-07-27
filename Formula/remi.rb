class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.0.tgz"
      sha256 "53a924335e0dbbbb4f062d9e6df486f82808423f8acaa046076b24395e95c4b7"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.0.tgz"
      sha256 "a9fd288566a2aec4f4c5cc6beedea75fa129bb03ad2260494e351be09472c118"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.0.tgz"
      sha256 "55a1cbc1d3d6b0d6ec430ef4182f53489d080391d24ede03d9d1c5ed806d217b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.0.tgz"
      sha256 "e8ab38e27edcf48a9d09356e0a569cfd7ea45fdd52150f39cda94bf2ed4b3b4f"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

