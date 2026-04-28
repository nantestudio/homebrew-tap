class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.8.2/nst-v0.8.2-macos-universal.tar.gz", using: :nounzip
  sha256 "b6d3aa0a42e6010c9b98a978e0dcfc71f8680926329dca8bbbe0edbec0ad3f38"
  version "0.8.2"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.8.2-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
