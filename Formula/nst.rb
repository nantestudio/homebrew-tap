class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.11.0/nst-v5.11.0-macos-universal.tar.gz", using: :nounzip
  sha256 "8e0d010637fd319b2146530384502c75f9bda8849a4f43b88389ededeccaecf2"
  version "5.11.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.11.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
