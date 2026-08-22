class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.17.0/nst-v2.17.0-macos-universal.tar.gz", using: :nounzip
  sha256 "bb7eddc179cbe55f79441ae217272a23826c611d744d15cf7e5903f684926738"
  version "2.17.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.17.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
