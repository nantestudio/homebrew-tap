class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.3.1/nst-v5.3.1-macos-universal.tar.gz", using: :nounzip
  sha256 "1ab6a077d62a6f099b94d1e4d70e948190443da5c28f48cf109585c2a4de5527"
  version "5.3.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.3.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
