class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.5.0/nst-v3.5.0-macos-universal.tar.gz", using: :nounzip
  sha256 "1943814552efe74e0b01432d2d1702aeef9cce424eba46d7a231d836d77e481a"
  version "3.5.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.5.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
