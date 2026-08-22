class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.19.0/nst-v2.19.0-macos-universal.tar.gz", using: :nounzip
  sha256 "458402df985e7e4c40b4e759331c25769f569e239747022e94515fed3bf84296"
  version "2.19.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.19.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
