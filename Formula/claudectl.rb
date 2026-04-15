class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.1/claudectl-v0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "d705204b18931e6f0d0eda3a68223d15055b9f4c195443250dfb0dce5c1b5554"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.1/claudectl-v0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "08ced67fc8580475601dad1945be31e6b50713ae9b930afb4c10f1b8c78a3c6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.1/claudectl-v0.18.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d45585ecf3cb5141470a0fd212863d2d54d99be33abb1989c7d8b6769aaa30ff"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.1/claudectl-v0.18.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15d459d2a824ec1a1fcab24c49a2c2c3475862069353b3ca8cd9500afe3663da"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
