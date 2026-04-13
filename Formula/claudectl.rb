class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.1/claudectl-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "539aef472547bbb9ca1fb8ee422cf67c899667e2eafbf4f9ddcd942b01443840"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.1/claudectl-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "7d492e412707eb5a6209be65392bf7cc6e66f2a41eb3854e441e23b8eed52fcb"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
