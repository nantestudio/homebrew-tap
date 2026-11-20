class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v5.4.5/nst-v5.4.5-macos-universal.tar.gz", using: :nounzip
  sha256 "b77fd990aefcb5b188b110c638907b3a763a0195942be6b1f40d57654f4e1d53"
  version "5.4.5"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v5.4.5-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
