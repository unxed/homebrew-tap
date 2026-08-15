# This file is generated automatically by CI on each tagged release.
# Do not edit by hand — changes will be overwritten.
class F4 < Formula
  desc "# f4 — efficient and cozy file manager in go"
  homepage "https://github.com/unxed/f4"
  version "0.2.0-beta"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.2.0-beta/f4-darwin-arm64.tar.gz"
      sha256 "e8264fc22192b2e7b3951de0d7d4002e3c2124b6c75905a0b6178ad3359ac871"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.2.0-beta/f4-darwin-amd64.tar.gz"
      sha256 "1c1eda0b7e17f257156ed8627979dd032e3154a1b3d1af56513d2366eaed9a0e"
    end
  end

  def install
    bin.install "f4"
    prefix.install "plugins" if File.directory?("plugins")
  end

  test do
    assert_match "f4", shell_output("#{bin}/f4 --version 2>&1")
  end
end
