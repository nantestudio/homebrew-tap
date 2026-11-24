class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.12.1/nst-v5.12.1-macos-universal.tar.gz", using: :nounzip
  sha256 "01c2018d180dd057f410ac283ae54bd3ce22407860ea3785b7f2833c4beb614d"
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
