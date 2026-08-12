class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.11.0/nst-v2.11.0-macos-universal.tar.gz", using: :nounzip
  sha256 "90f3e44b3039d3b632180417339973f5ed2edc6ec0bd0fcc35aa186b53a382e4"
  version "2.11.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.11.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
