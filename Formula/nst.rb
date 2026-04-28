class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.8.1/nst-v0.8.1-macos-universal.tar.gz", using: :nounzip
  sha256 "caae16dff7f104e72e2a515c661468c61ffc6aa4987dc8ce773e5ca952061285"
  version "0.8.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.8.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
