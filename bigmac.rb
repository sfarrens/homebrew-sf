# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/BigMac"
  url "https://github.com/sfarrens/BigMac/archive/v0.0.4_beta.tar.gz"
  sha256 ""

  # List dependencies
  depends_on "libomp"

  def install
    system "cmake ."
    system "make"
    system "make install"
  end
end
