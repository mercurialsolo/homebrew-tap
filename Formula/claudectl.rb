class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.21.0/claudectl-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "1e1626fdcc58e8caa213c1b548f04dc83858f945b8254b2afeaf74b4c1066f5e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.21.0/claudectl-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "0a8483b4eb9042ec3b260a2128145fec35f67e2d3868c1d10a8f5ee82735b7b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.21.0/claudectl-v0.21.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1952e07760702363a240da26fd00572e9d590684f019c4899961a3404ab13123"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.21.0/claudectl-v0.21.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9adc3ea1bcaf29b246b32a811a14207191ae0c3520e62aa78f7e017565a680d"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
