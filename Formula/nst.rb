class Nst < Formula
  desc "Nante Studio CLI — secrets, links, ads, App Store, Play Store, analytics, Android scaffolding"
  homepage "https://github.com/nantestudio/nante-studio-cli"
  url "https://github.com/nantestudio/nante-studio-cli.git",
    tag: "v0.3.0",
    revision: "f743697"
  license :cannot_represent
  head "https://github.com/nantestudio/nante-studio-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nst", shell_output("#{bin}/nst --version")
  end
end
