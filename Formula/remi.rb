class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.14.tgz"
      sha256 "22113b845367d546cb5f2b947f09f169b3bab9b32bfe278eefe1188feb94e199"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.14.tgz"
      sha256 "2742610fba06a045e42d81a2258c3481d21095cdaf7bec858ae33f84d8b5cf3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.14.tgz"
      sha256 "23c3915f163d71fd071ffab15b9e674f7c6161990fc99ca33c562126f1affa1c"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.14.tgz"
      sha256 "264c23123f547fcbb23d33cf3affdba1da49a69779e7ad931206aaf8a91cfb69"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

