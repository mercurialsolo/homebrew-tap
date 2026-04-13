class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.3/claudectl-v0.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "f8092b77fc14e9bfcae8ec3f6c040f2e83b6535615959500d905658688ec8e28"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.3/claudectl-v0.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "dda6d4457833dd4fb6981620c4d7af56379489307e9febc2fdac9ad69e0633b2"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
