class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.0/claudectl-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "51e03cbf178465154562db8e5c67f761c36332095b9344452a3e0eea9eb4510e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.0/claudectl-v0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "f34fef1e78cadc725ca92358efe00add56e5b69137902d241a62bc167e2eb640"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
