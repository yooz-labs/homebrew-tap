class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.16.tgz"
      sha256 "8cf3a2b4e0cd38b3a9642a7815f620faf5e133991f6397bab1d1dedcbd2ab8e5"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.16.tgz"
      sha256 "ee7f925342b1ed2f79e7752e768fe22a41153a3ecef4deb83ca0a7bf4ed9d33d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.16.tgz"
      sha256 "60582a317556626900548f1554af446a07a10d4e3b82dc8f6504e784e0fc51bb"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.16.tgz"
      sha256 "34db3c79b600476190dbbe6bc6f23f6f58ff88580e53c186dc45a2f173f1fce5"
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

