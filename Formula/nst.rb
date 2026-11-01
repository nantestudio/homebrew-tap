class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.0.0/nst-v4.0.0-macos-universal.tar.gz", using: :nounzip
  sha256 "7c80260636a4868686fc5035d39704ae32216baf0c2cf1341474e9c73a1294ee"
  version "4.0.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.0.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
