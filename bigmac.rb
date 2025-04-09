# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/0.0.7.tar.gz"
  sha256 "be43c4cd5eacd27b2d98e5c9517a7f9f487d414d263aae0fbc1c0e5112182378"
  license "MIT"

  # List dependencies
  depends_on "cmake" => :build
  depends_on "libomp"

  def install
    system "cmake", ".",
           "--log-level=VERBOSE",
           "-DCMAKE_INSTALL_PREFIX=#{prefix}"
    system "make install"
  end
end
