class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/nst"
  url "https://github.com/nantestudio/nst/releases/download/v0.4.1/nst-v0.4.1-macos-universal.tar.gz", using: :nounzip
  sha256 "4849d52ec41aeddbc8b4d16caf24f481a3934bfc352886a0b6443257207eb826"
  version "0.4.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.4.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
