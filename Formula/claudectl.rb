class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.10.0/claudectl-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a5ee9d5f1e75474329062881ebf7a140209a231ec59c057d9f76b602a2f36d32"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.10.0/claudectl-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c9dc00eef8359db53d16b6c6f0ceb958cdb2acfdfd2f29e3fdd6cf3f681bb41"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
