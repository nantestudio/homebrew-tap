class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.8.0/nst-v2.8.0-macos-universal.tar.gz", using: :nounzip
  sha256 "12d861de06cd0b3852d687b6c122f335450f9eaeccefa7f4990523bfd59a2a1a"
  version "2.8.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.8.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
