# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/BigMac"
  url "https://github.com/sfarrens/BigMac/archive/v0.0.2_beta.tar.gz"
  sha256 "caacbe91e276209fcac0b41d57789c2b05e481509af4772676cb30f662142d3e"

  # List dependencies
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end
end
