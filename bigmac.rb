# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/v0.0.7_beta.tar.gz"
  sha256 "40cceb3a79f012876a1b2041112eaf31b1cd323e4470c1e7a0f541f7974ada47"
  license "MIT"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
