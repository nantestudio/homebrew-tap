class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.33.0/nst-v2.33.0-macos-universal.tar.gz", using: :nounzip
  sha256 "0c9ae355c6fb91f25b1228ae0616696d92324678d74bc6a42cbdeeca94a6dd83"
  version "2.33.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.33.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
