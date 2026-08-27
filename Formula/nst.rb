class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.21.0/nst-v2.21.0-macos-universal.tar.gz", using: :nounzip
  sha256 "4118c41389d93285d05bac8e78589e2e1dee10d3ab5c6a41df49d9dd25d985d3"
  version "2.21.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.21.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
