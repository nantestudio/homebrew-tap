class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.32.0/nst-v2.32.0-macos-universal.tar.gz", using: :nounzip
  sha256 "69d31f0618f09009c7e69f5f1facc28d43f4df3f0acaf10ced30efcfb0894929"
  version "2.32.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.32.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
