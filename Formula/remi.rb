class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.9"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.9.tgz"
      sha256 "0a6c1857daa115882a43ddd6495ee88dd516d2f5faef281dc874096ef970c4f8"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.9.tgz"
      sha256 "dfe93177289795a9439830d8a288281fef6ef47d7bc7ad496dd53aecae11aba7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.9.tgz"
      sha256 "87529bed164d45a6c317fa9bddb3d7ba415403906ccf895429ca35c0ae5d6e2b"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.9.tgz"
      sha256 "a2786d392e4406bf56df22875c78af19481eb0b2c09fb65fb5047b6102c57cce"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

