class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.9.0/claudectl-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "111423840c2d798bc34347954216a1739f42d1354fb9ffeb0fece539886f3567"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.9.0/claudectl-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "427a6ba11f53a6266bb72b014543cbf867516f90dfcc21447f8454889461fc69"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
