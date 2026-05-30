class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/v1.0.0/nst-v1.0.0-macos-universal.tar.gz", using: :nounzip
  sha256 "950b7e4016c37417317c5a088409e1065b02c1911e0d136733881276413ced84"
  version "1.0.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v1.0.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
