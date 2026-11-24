class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.11.1/nst-v5.11.1-macos-universal.tar.gz", using: :nounzip
  sha256 "73d6ac552d44c261554d4f98c72d15783146acc140bfa82072b68e306b94d9e3"
  version "5.11.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.11.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
