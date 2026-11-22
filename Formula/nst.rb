class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.4.8/nst-v5.4.8-macos-universal.tar.gz", using: :nounzip
  sha256 "7fdfe893bacf8cf87399b1e24c31223602578882d4109fc1f96da7319db4a2a1"
  version "5.4.8"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.4.8-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
