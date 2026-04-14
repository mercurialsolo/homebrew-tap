class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.5/claudectl-v0.15.5-aarch64-apple-darwin.tar.gz"
      sha256 "7d398ca077d763e5e9f2523f38c17bdbd6c649323c429dfeac1221be22c701d9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.5/claudectl-v0.15.5-x86_64-apple-darwin.tar.gz"
      sha256 "bce3e71c865d88629d0579847a6473245a1a73d8f53e2aa827828fac4244ba9f"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
