class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.6.0/nst-v3.6.0-macos-universal.tar.gz", using: :nounzip
  sha256 "bee21a5a7adcf67e1d950706871a4c633d97871033f814050c2eb5d0db6f680d"
  version "3.6.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.6.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
