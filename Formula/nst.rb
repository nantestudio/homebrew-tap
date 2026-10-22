class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.3.0/nst-v3.3.0-macos-universal.tar.gz", using: :nounzip
  sha256 "cc0ffbc78f34aec8f2a4f37291077ab56ed533f2996871961347cde84e04820c"
  version "3.3.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.3.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
