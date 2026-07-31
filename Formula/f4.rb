# This file is generated automatically by CI on each tagged release.
# Do not edit by hand — changes will be overwritten.
class F4 < Formula
  desc "Experimental Far Manager / far2l clone in Go"
  homepage "https://github.com/unxed/f4"
  version "0.1.3-alpha"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.1.3-alpha/f4-darwin-arm64.tar.gz"
      sha256 "88a8cf3e6c6e1615966717b05a8a50df24368bb47b224930377a55360066db1c"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.1.3-alpha/f4-darwin-amd64.tar.gz"
      sha256 "20c28e397b141dd3551408ac9421eebcc6d419e8cad1d4bfb497436e2e578350"
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
