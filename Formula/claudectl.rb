class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.4/claudectl-v0.13.4-aarch64-apple-darwin.tar.gz"
      sha256 "20f39bfc7b1794bc896bb742993e5c1bde25e749d08d91238e6ed9deabe1d74d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.4/claudectl-v0.13.4-x86_64-apple-darwin.tar.gz"
      sha256 "07f05812c2256c49905991ea868fee8b08f9782fad845ffefe5daceff0eac3f2"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
