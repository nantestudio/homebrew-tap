class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.9.0/nst-v5.9.0-macos-universal.tar.gz", using: :nounzip
  sha256 "e8a6fefa1e3777ea1443378f0cb0b629a4321f2520ae2c98b3692e8d1c1a0441"
  version "5.9.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.9.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
