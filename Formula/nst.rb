class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.18.0/nst-v2.18.0-macos-universal.tar.gz", using: :nounzip
  sha256 "1a8c9b3fde5d77b30cd1ef4f20a9eab9ef7d63bf3566997a92a11113819af1e2"
  version "2.18.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.18.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
