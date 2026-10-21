# This file is generated automatically by CI on each tagged release.
# Do not edit by hand — changes will be overwritten.
class F4 < Formula
  desc "# f4 — efficient and cozy file manager in go"
  homepage "https://github.com/unxed/f4"
  version "0.4.0-beta"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.4.0-beta/f4-darwin-arm64.tar.gz"
      sha256 "8dfb0eaaf961d150649084b0ba0f53b356313d2cf2bf2ec8c867114e9d09a35a"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.4.0-beta/f4-darwin-amd64.tar.gz"
      sha256 "0395e6a0715fd61927f5ab76f4801646a36f477621c269f4a65ce38bd2a6aff7"
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
