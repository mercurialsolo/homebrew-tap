class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.2/claudectl-v0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "2ce3a0c5e944a337b359e797c7fa93bfae0842f6ce5b25ef249ee7be1e080e8f"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.2/claudectl-v0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "afb07440dbc5f2559ca3579a263e77863d7705f613a142a105efd17d19ebce1d"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
