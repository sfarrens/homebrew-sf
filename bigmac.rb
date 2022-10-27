# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/bigmac"
  url "https://github.com/sfarrens/bigmac/archive/0.0.6.tar.gz"
  sha256 "c895a8e109ecdc84f2e9d0acfa9f217c10fe6d72d8f456097c7499cc92dc078f"
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
