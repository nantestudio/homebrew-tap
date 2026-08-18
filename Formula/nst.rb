class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.13.0/nst-v2.13.0-macos-universal.tar.gz", using: :nounzip
  sha256 "0ef8b008dad7e62c7a1a9d2044adbeeb2ca9525ecc963fbaf522d651e4a07a50"
  version "2.13.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.13.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
