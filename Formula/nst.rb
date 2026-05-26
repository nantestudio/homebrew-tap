class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/v0.14.0/nst-v0.14.0-macos-universal.tar.gz", using: :nounzip
  sha256 "5fb2eb305e5913f7af3788506f456de10d11863ae5a1e3cab964e3f5faf68e4b"
  version "0.14.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.14.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
