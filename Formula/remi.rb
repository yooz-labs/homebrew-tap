class Remi < Formula
  desc "Remote monitor for Claude Code CLI sessions"
  homepage "https://github.com/yooz-labs/remi"
  version "0.7.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-arm64/-/remi-darwin-arm64-0.7.2.tgz"
      sha256 "840a294d96f32e5bf4eba15dd9dc78b08109144b6444de50b0d80fc9da527c46"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-darwin-x64/-/remi-darwin-x64-0.7.2.tgz"
      sha256 "6cb1ffd3a476bf4185ff5232ed78a48ab84a01678d5c1731e045c19d713cab66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-arm64/-/remi-linux-arm64-0.7.2.tgz"
      sha256 "302a4a2051cf55ec08cbc62097dce3059126d68a8b22d8077e427db685b4751c"
    else
      url "https://registry.npmjs.org/@yooz-labs/remi-linux-x64/-/remi-linux-x64-0.7.2.tgz"
      sha256 "f070d79ac663721640c8cea3d398a09183858919ce17586af31506f544e16403"
    end
  end

  def install
    bin.install "bin/remi"
  end

  test do
    assert_match "remi #{version}", shell_output("#{bin}/remi --version")
  end
end

