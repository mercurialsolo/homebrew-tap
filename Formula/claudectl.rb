class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.5.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.5.0/claudectl-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "851ac8d8131baff50eeb0630fb157e754ac6be4e1c523aa1d1a626b707af41b0"
    end
  end
  def install
    bin.install "claudectl"
  end
  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
