class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.11.2/nst-v5.11.2-macos-universal.tar.gz", using: :nounzip
  sha256 "606c546b21c8cc7b4878a7f5727435327f59448de8b1e23d053cb076b7366f0d"
  version "5.11.2"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.11.2-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
