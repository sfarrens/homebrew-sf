# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/v0.0.5_beta.tar.gz"
  sha256 "9c52eec49a40a3c972cf511a591ee38498e8657a97b50c8437c5c9192e445670"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end
end
