class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.5"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.5.tgz"
      sha256 "ecf0e2dc31f4c32a7784ea879ca19c6b9359a6a9e57da05b42adcdfa54c89fde"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.5.tgz"
      sha256 "a3603a9b27d57276742443f4c02cc967de169751d2e341acf46b5593ae5f3d63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.5.tgz"
      sha256 "b62c2e1f493e44a20dab9922e83b2a495dee65701b3c4e6760fcf46c7223234e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.5.tgz"
      sha256 "e3f831e2351d250411d0bbad42dc2438a213a32810b1a75b3e6eec674c67a344"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

