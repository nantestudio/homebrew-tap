class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.12.1/nst-v5.12.1-macos-universal.tar.gz", using: :nounzip
  sha256 "3c3ec07b0fdf8de53259b2f010a5fdae0f9ddb8a29725818bed5b7edcd3ae613"
  version "5.12.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.12.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
