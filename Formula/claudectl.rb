class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.2/claudectl-v0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "c202331b0ffa69ad32921772f694a0e85da67b437349e2f05f42e7c611ce4f44"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.2/claudectl-v0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "f1593b1ed6a2db704dc14b8456d2aa034226a87aec0b8e284770417b42cf965b"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
