class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.4.2/nst-v0.4.2-macos-universal.tar.gz", using: :nounzip
  sha256 "90c92c1241ea9e6e5024f48f0d961c7513e4a579cd86090fa59db9be5b82af60"
  version "0.4.2"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.4.2-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
