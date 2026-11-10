class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.0.0/nst-v5.0.0-macos-universal.tar.gz", using: :nounzip
  sha256 "7959b51402dd410a70b38bf45fea51fecbfdb42f88fc0deaea44810c61b176d7"
  version "5.0.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.0.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
