class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.8.0/nst-v3.8.0-macos-universal.tar.gz", using: :nounzip
  sha256 "afba222120b1592d9f7a929bc810d2714c95f097f2530bf7fe26080949a96842"
  version "3.8.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.8.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
