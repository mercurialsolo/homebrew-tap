class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.35.0/claudectl-v0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4043450885f6fd7be691172e20ea1dbb966f6fa53748ab4e6cabe5e51c7747d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.35.0/claudectl-v0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "f2d2affe485e4af62161d5bbca463edde3b090c6d5814d3062bf7f0d61cdfac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.35.0/claudectl-v0.35.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "744d4c29b2831e159259830709671429d80554385160d57b79130adce014fbe1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.35.0/claudectl-v0.35.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "723d0d967b4509454f7a3e83b70c0f1bc9e58cfed9dd25bd9e2b28ad7a2369b7"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
