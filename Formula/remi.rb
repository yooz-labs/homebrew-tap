class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.5.tgz"
      sha256 "3f2d2e7c85e9f250a5b874ca19e21612957dbe76fccdeba7b281de4ef3059b5b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.5.tgz"
      sha256 "fc73c393c24711ab3e540390d17be18f0c07dee5f3bd4c17d3e6570b915f4054"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.5.tgz"
      sha256 "04897ad159675addbecbe5bab7957cb173ac8fe6b00ed83074f1d7fa5ee42097"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.5.tgz"
      sha256 "71f371dcf1f8393f24e319c0af96e1a0f2d4aa7363438de51dcdb74933fb46d1"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

