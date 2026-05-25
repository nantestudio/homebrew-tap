class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/v0.13.0/nst-v0.13.0-macos-universal.tar.gz", using: :nounzip
  sha256 "f3f069982944823f01ff6822a3f133ad1ff6165f07c7397783cd77e46139df22"
  version "0.13.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v0.13.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
