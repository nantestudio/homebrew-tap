class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.24.0/nst-v2.24.0-macos-universal.tar.gz", using: :nounzip
  sha256 "843e32111214a4d5f9430ac7288821ed94bf7ba9c8bbd4238b0583d526703ebe"
  version "2.24.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.24.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
