class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.3.7"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.3.7.tgz"
      sha256 "14f2c811f9fba5a746cb033ba3c7908a8bca5deb8b7eb726277a7c8523fc6717"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.3.7.tgz"
      sha256 "d529644d166ce1d96c0a127f8d718f148acd73ca997f7b841fef8e9bbacc4977"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.3.7.tgz"
      sha256 "2f448f669c9b3e65ea6933dfff5fc3778cfac6ecd8713fffadb61920221d1ada"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.3.7.tgz"
      sha256 "7343910b51a06d8ffb6c3593b336bb145a6cd47793a58696cbd0a2624e34a04d"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

