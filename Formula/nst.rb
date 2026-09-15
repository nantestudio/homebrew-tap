class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.31.0/nst-v2.31.0-macos-universal.tar.gz", using: :nounzip
  sha256 "fc8903d10e620502d2d4c2287e69c7c4c044e705d842d6c43b9b91bb9d482952"
  version "2.31.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.31.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
