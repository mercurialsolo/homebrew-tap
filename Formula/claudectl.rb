class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.32.0/claudectl-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "a59da1f0891c20773aef662055a1a18b778b883783f7abd58c2be8820f00a70d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.32.0/claudectl-v0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "894ef6a75b529942cace46e239f4148afba1e07ccdd792b0cbd3673e0bf73733"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.32.0/claudectl-v0.32.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c61c0c161c06f12ab618a658ab614c8a57405e20cd0bddf89a88811ccc0effa"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.32.0/claudectl-v0.32.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "882613450e775d26a0a958563a743f19d28ce07f9886fddc52571daa99532da0"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
