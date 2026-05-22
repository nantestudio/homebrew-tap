class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/v0.12.0/nst-v0.12.0-macos-universal.tar.gz", using: :nounzip
  sha256 "abe692330196204612bbf228d1577b93e11ed26b8fd6f5fdb49d07b143dbcfcf"
  version "0.12.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.12.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
