class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.4.9/nst-v5.4.9-macos-universal.tar.gz", using: :nounzip
  sha256 "2b9a418fbe1f83611869bc307eacfe792c8fa4cecb65a7fbccf5438dd8bd8d39"
  version "5.4.9"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.4.9-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
