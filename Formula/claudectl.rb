class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4f700beb3a1d46b9c2056d2400ecdf6e65c0bd2f2c3a7eed7375880b1522733"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "6ff9c1db6093c4fb42e1412a51b7f9e578da9ed074039506543e64ed7913baa8"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
