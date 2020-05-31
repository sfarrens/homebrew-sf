# Homebrew formula for SFoF

class Sfof < Formula
  desc "Super Friends-of-Friends (SFoF): Galaxy Cluster Detection Algorithm"
  homepage "https://github.com/sfarrens/sfof"
  url "https://github.com/sfarrens/sfof/archive/v4.0_beta.tar.gz"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"
  depends_on "cfitsio"
  depends_on "boost"

  def install
    
    system "mkdir build"
    system "cd build"
    system "cmake", "..", *std_cmake_args
    system "make"
    system "make install"

  end

end
