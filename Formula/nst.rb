class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.0.0/nst-v3.0.0-macos-universal.tar.gz", using: :nounzip
  sha256 "764ed632f7bdf06fc6355d126524ac1f60be87273a739624ff0a7fc61285d210"
  version "3.0.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.0.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
