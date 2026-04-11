class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.22"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.22.tgz"
      sha256 "fa8bc8ec11c87a5fbcbfa9d79086fe2101f3e5cbaf978a820b9af610d8fa4cb9"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.22.tgz"
      sha256 "2682d1138647aa199b803892156b343003dc0b0a088dd59afbb66f9cfe04704c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.22.tgz"
      sha256 "f474d40867ce14c1f85c9ddc21b3a9b4e0c2a970af9929db98da306d78803f58"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.22.tgz"
      sha256 "488075d69c66af432dd89766eb6975143d322c3f650cbedc8dbdf0f816c62b05"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

