class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.8.2.tgz"
    sha256 "7563dc19d7b3f7b7f833a167cbf3bd5be6f20357b310a8568ffd59e1dcc2d55d"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.8.2.tgz"
      sha256 "a05890f4c24b554d7a9fe4c2a97f27f620b5957b497f60f3d582cd7929d82fd2"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.8.2.tgz"
      sha256 "1d7ca768b816ccee24f8a81e2594c5b383c1f399c012d63858adc98ea7792c0a"
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

