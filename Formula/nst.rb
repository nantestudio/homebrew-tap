class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.11.0/nst-v0.11.0-macos-universal.tar.gz", using: :nounzip
  sha256 "9c471c766464e8b3686ad05a41a8767736ea097e083512ab93c8fe49abc75948"
  version "0.11.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.11.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
