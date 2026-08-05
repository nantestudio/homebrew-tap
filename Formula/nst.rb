class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v2.9.1/nst-v2.9.1-macos-universal.tar.gz", using: :nounzip
  sha256 "4e94bdc91210b8e7e95b920b71bd3510c7e1398c2940e56dd61921f70002eacd"
  version "2.9.1"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v2.9.1-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
