class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.10.0/nst-v5.10.0-macos-universal.tar.gz", using: :nounzip
  sha256 "f384bf231b92bf7e99d1ddab710a3333a971c9f67af5c22e2380fd10d840c25b"
  version "5.10.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.10.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
