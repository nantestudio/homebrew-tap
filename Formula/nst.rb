class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.3.0/nst-v4.3.0-macos-universal.tar.gz", using: :nounzip
  sha256 "9b44d2d11d7df08a8866451fc52960cd50460980e36abaf3563f54db63185b19"
  version "4.3.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.3.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
