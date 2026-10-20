class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    depends_on arch: :arm64
    url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.8.0.tgz"
    sha256 "9b50c4ee2d61f8f639af638664f6a85a8bd5b724c081d2f419fb433969381a88"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.8.0.tgz"
      sha256 "a48905df692ee5dc1163df56ca0df7e5584abb4f76b56583aac7ddc30e43b0ca"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.8.0.tgz"
      sha256 "a56caf8e97e3d71cfbfefbf9b08c9a5dd34613402422b54ec8c8c17ce45cd538"
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

