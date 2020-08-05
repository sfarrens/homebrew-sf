# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/BigMac"
  url "https://github.com/sfarrens/BigMac/archive/v0.0.4_beta.tar.gz"
  sha256 "27abb50b849ace439a3c8991cde20be1b89b4fdd32401252d9ea939622ca2366"

  # List dependencies
  depends_on "libomp"

  def install
    system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end
end
