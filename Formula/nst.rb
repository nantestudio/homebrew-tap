class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v3.1.0/nst-v3.1.0-macos-universal.tar.gz", using: :nounzip
  sha256 "b869dca6250129ab69bdfb5545b73b0b9923bdd670e92f79782eddbdce7b22ae"
  version "3.1.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v3.1.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
