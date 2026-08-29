class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.25.0/nst-v2.25.0-macos-universal.tar.gz", using: :nounzip
  sha256 "55757cfbf0e68d78074f42b5c2f3b061102ae3005e8e46f4b7c1ce76524f3533"
  version "2.25.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.25.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
