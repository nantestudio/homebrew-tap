class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.1.0/nst-v5.1.0-macos-universal.tar.gz", using: :nounzip
  sha256 "e28c2fb3ec290387e9b1599a1b3791aaffc5be178b6e5a9a4b0b4abb422cc5eb"
  version "5.1.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.1.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
