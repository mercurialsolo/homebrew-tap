class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.23.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.1/claudectl-v0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "a4785ae792fe7540c397e6d225db289712ad41974b34257b0505c122f7b92887"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.1/claudectl-v0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "3c008532f4e4bc7a7adafdc841e85949ae8d4a595d03c7244080412a9588d92c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.1/claudectl-v0.23.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e0855d7411fd2f75176ca51b04d9cb51a68e15348799a35378268cbd3232eb6"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.1/claudectl-v0.23.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc5723e181a50740310e879e56b967d7055088fa660f1e3ff8d748e32cf1f322"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
