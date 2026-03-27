class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.4.14"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.4.14.tgz"
      sha256 "0d5da92ec647e1bcef10227d23cd48675323067d068f117e31d139e2fd0288a0"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.4.14.tgz"
      sha256 "d29bae911643aa261368991239ecdb797142fa505244c1d4dbf7dfa0978e73e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.4.14.tgz"
      sha256 "119249d8f742543c36b2493b597e27d42060a59cdeaea9735e80491020a62d2e"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.4.14.tgz"
      sha256 "0ee45d2b554f021e4f84df4ca36a23b77aa0a90487cbaae1a15d7b46975d9475"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

