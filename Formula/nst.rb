class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.7.1/nst-v5.7.1-macos-universal.tar.gz", using: :nounzip
  sha256 "fe0e1891def6932dbf2bbb65dcbe517f06efc7e007b14ae7c34972c5dd42d490"
  version "5.7.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.7.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
