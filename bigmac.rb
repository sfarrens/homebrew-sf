# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/0.0.2.tar.gz"
  sha256 "290d6f7558cb413a2274cc31a139cebe496be464d01059f21ab3bdc666c0e569"
  license "MIT"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
