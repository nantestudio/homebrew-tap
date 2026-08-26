class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.20.0/nst-v2.20.0-macos-universal.tar.gz", using: :nounzip
  sha256 "adc0669d32212e1f92904ad3872e6bda23ff5eb0c9a71b796db935c8b8940916"
  version "2.20.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.20.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
