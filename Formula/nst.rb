class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.4.6/nst-v5.4.6-macos-universal.tar.gz", using: :nounzip
  sha256 "ff2a62dbfb50d9d678a3685bff97740bfa5508171ab532064db449164394b8b3"
  version "5.4.6"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.4.6-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
