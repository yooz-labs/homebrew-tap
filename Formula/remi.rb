class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.1.0.tgz"
      sha256 "a6ca69e9bc370c4a764231c396c55ce360056b6a2a9850a92ec9628a662dfd8d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.1.0.tgz"
      sha256 "a89db326d0c073eedf4595d6e3a852cab73ff7cc0314d1b08afdecbaf39bd0de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.1.0.tgz"
      sha256 "c62934aa34393fff546e9a683e5300b145b508099ab9f433194293c0a281497d"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.1.0.tgz"
      sha256 "bb7920a536fb88f9fa5e00a4088ad875bc2e4ee08f28b064da37fcc9718554a7"
    end
  end

  def install
    bin.install "package/bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end
