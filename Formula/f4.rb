# This file is generated automatically by CI on each tagged release.
# Do not edit by hand — changes will be overwritten.
class F4 < Formula
  desc "# f4 — efficient and cozy file manager in go"
  homepage "https://github.com/unxed/f4"
  version "0.3.0-beta"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.3.0-beta/f4-darwin-arm64.tar.gz"
      sha256 "ba53f95576c96ea2703673391f851d0c7df85b768f20a512bdb0c742614fdc86"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.3.0-beta/f4-darwin-amd64.tar.gz"
      sha256 "90219fefd0faedd8517dd6f83c60a7b48580dd5e5e058d31421cb75e3f80aec0"
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
