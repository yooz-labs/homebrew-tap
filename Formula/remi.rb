class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.4.tgz"
      sha256 "e556c064b44dcb8ea8e4422053f6d0ea2ee2d3216b78f90444acb705523a0508"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.4.tgz"
      sha256 "7044bb4818378035eaa45a2cea5f2a9fc92a06b5ec5c7e89503e06fc348a2746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.4.tgz"
      sha256 "ee2aa7246dc5e70fc344151cc846f4fed5bea0931a4d4067e7df29c61931beee"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.4.tgz"
      sha256 "394e8699c688186be651015926c1429fe16c469576c6d798d82d146d7c425945"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

