class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.7.0/claudectl-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "e9544ac62e1e82bdbc9da7bf4a3233dd941a11e1cf81bb441bfcab74dea202d4"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.7.0/claudectl-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "8b03d1cdef777c55f1dca1bc1bbf25c9b75f6a285c1e9c2da2fd9ab7f2ea788e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
