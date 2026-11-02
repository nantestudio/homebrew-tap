class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.2.1/nst-v4.2.1-macos-universal.tar.gz", using: :nounzip
  sha256 "bc4e02739e489ab4b0187dfd470d39274657e51e18cf05776df81a5ae46d6375"
  version "4.2.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.2.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
