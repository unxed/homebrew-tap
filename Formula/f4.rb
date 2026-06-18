class F4 < Formula
  desc "Experimental Far Manager / far2l clone in Go"
  homepage "https://github.com/unxed/f4"
  version "0.1.1-alpha"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/unxed/f4/releases/download/v0.1.1-alpha/f4-darwin-arm64.tar.gz"
      sha256 "c5effc70c91da9f4d01ddf19ac263702630b2134bbbccaeb7deb9514826b9687"
    end
    on_intel do
      url "https://github.com/unxed/f4/releases/download/v0.1.1-alpha/f4-darwin-amd64.tar.gz"
      sha256 "bb280fd230c0913bc8e381e1b2a4846ff5442a66778fc9d7990a0a481e447704"
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