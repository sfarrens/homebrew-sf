# Homebrew formula for SFoF

class Sfof < Formula
  desc "Super Friends-of-Friends (SFoF): Galaxy Cluster Detection Algorithm"
  homepage "https://github.com/sfarrens/sfof"
  url "https://github.com/sfarrens/sfof/archive/v4.0_beta.tar.gz"
  sha256 "145a47cd45a0dcde3bc3a32304e13a9460f8eff0c74f7988c6bc9bfd9aa99be5"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"
  depends_on "cfitsio"
  depends_on "boost"

  def install
    
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"

  end

end
