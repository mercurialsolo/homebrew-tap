class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.20.0/claudectl-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "7013483f13804ffde89deb0449cf64375234826b0f16cab904b43ea38550cdc7"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.20.0/claudectl-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "42eed214449f23d40e7694a08bad534bcfa4c3bb3204c2b44352a8f251e27b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.20.0/claudectl-v0.20.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a6de8d4a910eb3d4d56c69a0e8795e6b50580bfe7f8dcdd36431157aaab7334"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.20.0/claudectl-v0.20.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd5044206321c2a180d12ec375a4e546f59c327cb4bcb9cd754de01b2ba237ab"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
