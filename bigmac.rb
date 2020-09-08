# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/0.0.3.tar.gz"
  sha256 "8652342690f7d3c7e62e1b0f9e3f7c109d8afd260eab01430da51d488dc2bb35"
  license "MIT"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
