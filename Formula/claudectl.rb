class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.1/claudectl-v0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "50774d6edea5e5eea45cd6605e0ff4e16f765bb1f9e7d21a9d2bc11be07e73f8"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.1/claudectl-v0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "0698c9638c64ec00b108f07af29f5361bb9dde73ccdb31719c626712789b687e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
