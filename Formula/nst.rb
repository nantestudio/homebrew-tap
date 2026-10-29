class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.9.0/nst-v3.9.0-macos-universal.tar.gz", using: :nounzip
  sha256 "9e548d997b2b9a8727e7f01a61ddc6d8e172ef4f03ff1a054fa5a0ea2b056af0"
  version "3.9.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.9.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
