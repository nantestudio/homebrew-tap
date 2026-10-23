class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.4.0/nst-v3.4.0-macos-universal.tar.gz", using: :nounzip
  sha256 "08ebb0f322c1f35c84ef030b19552b16870914680910169dcedcf61f4584610a"
  version "3.4.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.4.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
