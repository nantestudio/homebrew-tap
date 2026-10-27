class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.7.0/nst-v3.7.0-macos-universal.tar.gz", using: :nounzip
  sha256 "9f740f60a298aab0afc2e2b713b204ba66dfeae4f75fdc16135cc256d9e822e8"
  version "3.7.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.7.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
