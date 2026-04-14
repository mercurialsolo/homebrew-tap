class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.2/claudectl-v0.16.2-aarch64-apple-darwin.tar.gz"
      sha256 "6d922408e852e78ed79a73314b815c0aa61e01c6313f13c60a76b129179795d6"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.2/claudectl-v0.16.2-x86_64-apple-darwin.tar.gz"
      sha256 "14105d646945d7039ce556dfe201e625365be80fd1db9cef200a967196bbc581"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.2/claudectl-v0.16.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef09383ffcd3f736acebf6157f63bb5bf13a3213c59e2b74c3004b719a1d3aa7"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.2/claudectl-v0.16.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f49743b33900e1b415aeda6b16f0486b482d520451c62288e4fde0f6a1f4c38"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
