class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.1.tgz"
      sha256 "16d7fdb785e981a603f7cfa1f98b624b04324e058c52e5a172ea884b830b6c6e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.1.tgz"
      sha256 "cb0332c06cd182ff5ea8420847973d44129af7b7b7a60a39423a7270850f0804"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.1.tgz"
      sha256 "5ffe2b8210d7f51bd7c9d03ce6141115713d3adae189333e17cb53d52e9ea07d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.1.tgz"
      sha256 "c15ab0e165aa2d4fc620a3bb408ae0a9feaea30b50fe4e42ef3179c6e72151eb"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

