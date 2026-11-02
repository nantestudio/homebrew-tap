class Nst < Formula
  desc "Nante Studio CLI - unified secrets, links, ads, and app store management"
  homepage "https://github.com/nantestudio/lamancha-rocinante"
  url "https://github.com/nantestudio/homebrew-tap/releases/download/nst-v4.2.0/nst-v4.2.0-macos-universal.tar.gz", using: :nounzip
  sha256 "25df1872e744b260804c334b670504137d6ddc80f06f1822733244f40c82885b"
  version "4.2.0"
  license "MIT"

  def install
    system "tar", "xzf", "nst-v4.2.0-macos-universal.tar.gz"
    bin.install "nst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nst --version")
  end
end
