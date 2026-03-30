class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.16"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.16.tgz"
      sha256 "dac49179f1d9768207406eb8b169d5a1cb7bd87fe1778ef038fc316b229541c7"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.16.tgz"
      sha256 "91c4cb744daeb445d286bdc554f45e989a0cc7fc92050934bbff46dc49146df2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.16.tgz"
      sha256 "ca83fcb6eb0b9afb354e50122f11d1a3004c5a6db686a2e67554ec8004ddf240"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.16.tgz"
      sha256 "3fa138a623559aaa3004322ae5a9b6ce05c494d926ba3cd63e9b6004c26fab33"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

