class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.6.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.6.0/claudectl-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "5966876824bb25f3748ac3c68cc3b43cc8be534a83ce9a7750219ebe132c789a"
    end
  end
  def install
    bin.install "claudectl"
  end
  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
