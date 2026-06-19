class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.13"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.13.tgz"
      sha256 "4424e9f273897064e2ed466675f8d4ab245eb386132829748993b10bf8f77ba7"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.13.tgz"
      sha256 "cbb13c469a508a2a19476fcb6cb3ac883cbefb222779ca02a42911ce67ca1b1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.13.tgz"
      sha256 "efcb61c4e0514b0d99fd25083e489be0aa83ef3e26e7c5dc561d207fecf7e093"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.13.tgz"
      sha256 "d1e68bf41e2beb65c08f492d7584057fdbb217bec7cddc21023fc323782c26ed"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

