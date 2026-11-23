class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.8.0/nst-v5.8.0-macos-universal.tar.gz", using: :nounzip
  sha256 "67b6c34dd5097f614821186787e7490d93b2ccce8e54fb7ed0cf9e3b272a8fa4"
  version "5.8.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.8.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
