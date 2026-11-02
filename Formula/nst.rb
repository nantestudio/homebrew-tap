class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.1.0/nst-v4.1.0-macos-universal.tar.gz", using: :nounzip
  sha256 "907d6dcbdd2b296112e0b6cc4a761b1c8cc0380cd860efb500765775ad0fdfe4"
  version "4.1.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.1.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
