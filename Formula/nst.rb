class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.30.0/nst-v2.30.0-macos-universal.tar.gz", using: :nounzip
  sha256 "a139b76b87360147e13d0654defaeddaa13f9de740a34f5ccbbab4649212da6d"
  version "2.30.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.30.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
