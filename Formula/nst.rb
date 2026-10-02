class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.2.0/nst-v3.2.0-macos-universal.tar.gz", using: :nounzip
  sha256 "cf3e344982ca2ff230b218da5f1b206817701b22f947e0ae0fba776f505bd310"
  version "3.2.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.2.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
