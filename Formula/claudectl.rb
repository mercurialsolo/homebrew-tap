class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.9.1/claudectl-v0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "d1c73cbb30bec3085cfa209043c8f6c90b4c1d2575616bfd9ae8514898cfab29"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.9.1/claudectl-v0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "6094814a479e5da8f26f1dbdaebf5787b780ea0fc85bdf088e2caf4d3676a1a5"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
