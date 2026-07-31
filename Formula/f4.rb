# This file is generated automatically by CI on each tagged release.
# Do not edit by hand — changes will be overwritten.
class F4 < Formula
  desc "Experimental Far Manager / far2l clone in Go"
  homepage "https://github.com/unxed/f4"
  version "0.1.2-alpha"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.1.2-alpha/f4-darwin-arm64.tar.gz"
      sha256 "a9eba1925ac1f7c53b44fab2ecf2c2b050ea0d58d07e449a1ca778b56f9810f3"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.1.2-alpha/f4-darwin-amd64.tar.gz"
      sha256 "daaf9869000a9ab7cdc0e0efdea9432e3e677ef99f4b0b936c3eceb2b5310693"
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
