class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.4.7/nst-v5.4.7-macos-universal.tar.gz", using: :nounzip
  sha256 "763af75d211d3c1ad5acfbe45c51e443529e0549ff69f2f159e27aa494f1e85d"
  version "5.4.7"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.4.7-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
