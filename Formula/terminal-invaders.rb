class TerminalInvaders < Formula
  desc "Terminal Space Invaders-style arcade game"
  homepage "https://github.com/ronenmagid/terminal-invaders"
  url "https://github.com/ronenmagid/terminal-invaders/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f78a949c4feab290da2c9a207a3ec1294537da6293e75792294dc142680332ec"
  license "MIT"
  head "https://github.com/ronenmagid/terminal-invaders.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terminal-invaders --version")
  end
end
