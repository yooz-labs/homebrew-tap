class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.6.6"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.6.6.tgz"
      sha256 "1650e815a0fcb47fe3950ff728dee2672371ebe398686546dce53266a5b25479"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.6.6.tgz"
      sha256 "45f2b5dc1f160c0f03db0419ebe41d46c6930043022277acfc080aa9c0dc5045"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.6.6.tgz"
      sha256 "cc52d996c86cf98c5e0890615b4bd5dc790840dbd6d4ba5b489bdc743406db56"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.6.6.tgz"
      sha256 "f8e00446b94423d05fc87d469c3b25cf31352aa4973725277d03933fd80b9f19"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

