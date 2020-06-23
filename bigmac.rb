# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/BigMac"
  url "https://github.com/sfarrens/BigMac/archive/v0.0.1_beta.tar.gz"
  sha256 "db78a3c14b466c0ad453ddec96e4ab3749c198eee1533a98bb0c93210a0a74fb"

  # List dependencies
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end
end
