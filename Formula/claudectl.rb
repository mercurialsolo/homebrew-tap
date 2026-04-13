class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.1/claudectl-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "4ea17202861880b132cc8c5baff83877cb9d64f7321c1f559e7d55858cbb56d3"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.1/claudectl-v0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "ddcd0ac1fe1388aaf4a1b1f23ea311aee5b07f8d33e2b31b36fa5d8ff75cc8a5"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
