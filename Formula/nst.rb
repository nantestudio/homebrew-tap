class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.1.1/nst-v3.1.1-macos-universal.tar.gz", using: :nounzip
  sha256 "c155cf0fd99c346222d4eb8d21da844c151f11f217815bd2213fef004795ff4b"
  version "3.1.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.1.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
