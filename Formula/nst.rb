class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.7.2/nst-v5.7.2-macos-universal.tar.gz", using: :nounzip
  sha256 "102e1cbd40ce67737af1e9bb4acad2c6e1f38b41bc58df4d8b08bf07c00836ec"
  version "5.7.2"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.7.2-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
