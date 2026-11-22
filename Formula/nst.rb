class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.6.0/nst-v5.6.0-macos-universal.tar.gz", using: :nounzip
  sha256 "3b612d7222f208b79d3b618710bcdcf2a3f54291bd4367433e1f90ae06d1d534"
  version "5.6.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.6.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
