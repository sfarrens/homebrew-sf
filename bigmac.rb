# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/0.0.5.tar.gz"
  sha256 "d29e0ed21142083f5f43d289890a68b8a3a9b0045d7b55097051b97537499690"
  license "MIT"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
