class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.15"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.15.tgz"
      sha256 "583881a38b9a7ae7f376736a7975416195622dfd3c1919a980b7d4bf479256ab"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.15.tgz"
      sha256 "0afa39173d39e2bffbf562255ed148898630e4677f44a9cc66b0464d5f11ba06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.15.tgz"
      sha256 "c56b86d33e24d639e0e327f7849f291fd1039744a6ff2419db2eee0a38137684"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.15.tgz"
      sha256 "e197854f0a315a362dbf16d3208890a7a0fad48b75336fd15312df280f3f1110"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

