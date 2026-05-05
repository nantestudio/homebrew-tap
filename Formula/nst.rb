class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.10.0/nst-v0.10.0-macos-universal.tar.gz", using: :nounzip
  sha256 "7911a35969858991c5b15a8ff68439f91470f45f35038c950ea642c55d60ec7f"
  version "0.10.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.10.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
