# Homebrew formula for BigMac

class Bigmac < Formula
  desc "macOS configuration parameters"
  homepage "https://github.com/sfarrens/BigMac"
  url "https://github.com/sfarrens/BigMac/archive/v0.0.0_beta.tar.gz"
  sha256 "7d8c2238ca43be7461aa2968f85af9ad4a5df5e9"

  # List dependencies
  depends_on "libomp"

  def install
    system "cp *.cmake /usr/local/lib/cmake"
  end
end
