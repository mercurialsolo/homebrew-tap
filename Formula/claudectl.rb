class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.14.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.3/claudectl-v0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "136e9823659d07ef1fdb40e7cd43e0255d3d0a2498b321e1d7d5c0762febb9e1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.3/claudectl-v0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "a95d16760baaaf9b8c9a644e23104a0c2827ed31e0d7844c5090344edf41becf"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
