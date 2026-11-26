class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.13.0/nst-v5.13.0-macos-universal.tar.gz", using: :nounzip
  sha256 "ec6376e3faff757949297c482b752ad5c14ca87d6e07d5f87a2a5422149e4f3b"
  version "5.13.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.13.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
