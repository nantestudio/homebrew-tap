class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.7.0/nst-v5.7.0-macos-universal.tar.gz", using: :nounzip
  sha256 "a05f0f071b8ee5143aeb9710b6ef6ecbcc7c10e4b2151dc020e0005f13745570"
  version "5.7.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.7.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
