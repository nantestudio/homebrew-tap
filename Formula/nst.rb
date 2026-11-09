class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.4.0/nst-v4.4.0-macos-universal.tar.gz", using: :nounzip
  sha256 "078e330db5155318175b0ea2353d7c1d79a441dd724f8f7312647305b5c70ef9"
  version "4.4.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.4.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
