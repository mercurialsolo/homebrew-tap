class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.4.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.4.0/claudectl-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "fb77dfddb134a0daebe45b1df224ef03172e21585c6565fd6a10437cb4a051cc"
    end
  end
  def install
    bin.install "claudectl"
  end
  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
