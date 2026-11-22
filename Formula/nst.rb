class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.5.0/nst-v5.5.0-macos-universal.tar.gz", using: :nounzip
  sha256 "b7a8d2550dcc3b14ecf1e2b876a694c812dd94d6af81555e8600cf0132ef9d0f"
  version "5.5.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.5.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
