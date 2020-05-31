# Homebrew formula for SFoF

class Sfof < Formula
  desc "Super Friends-of-Friends (SFoF): Galaxy Cluster Detection Algorithm"
  homepage "https://github.com/sfarrens/sfof"
  url "https://github.com/sfarrens/sfof/archive/v4.0_beta.tar.gz"
  sha256 "9c39fd9b4c5c3b90f0a73f966a9cb6c0f05a25c3626ca5888ee52e2016d28710"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "cfitsio"
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end
end
