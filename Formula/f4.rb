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
      sha256 "1d84c5e0207cf351acc49bdb189f9cc44e42b865464c81abd53265d16c08c144"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.2.0-beta/f4-darwin-amd64.tar.gz"
      sha256 "be0b5348fe20f7a70965e7d09c1f4a0ae23ce6553afa71aa6393c7d47c971aa4"
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
