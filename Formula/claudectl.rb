class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.1.1/claudectl-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "db1db28820bb1004fa6e3071992bfbff8c2e2c0b495576e02ceb9e8db315ff03"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
