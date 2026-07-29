class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.9.0/nst-v2.9.0-macos-universal.tar.gz", using: :nounzip
  sha256 "24f3e42595149f5565ad634ce5a5dea89d11164c8ec9adbac895c9d3950fb69e"
  version "2.9.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.9.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
