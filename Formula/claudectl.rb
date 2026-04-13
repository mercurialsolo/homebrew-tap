class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.2/claudectl-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "37027e149ed94f8c01ffa532ee126bf5568e1b4de74500aa2d45a4068d0b6584"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.2/claudectl-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "a587955de13fc1b72fc2c1acadbc6b3d3712e06da5e8400e6dc1a2e36667df2c"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
