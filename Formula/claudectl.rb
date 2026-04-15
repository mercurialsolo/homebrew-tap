class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.23.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.2/claudectl-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "fb06fcc43da8199ac2e783d576914134156fd4125e323900483b3a506a2834d2"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.2/claudectl-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "86104451e7b6849b13f9c521153baa5a252867fff451d09d08304559c184635a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.2/claudectl-v0.23.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "94bd8a039c1640bbdde5c410c562dfbbe20ffff1a4bb889a67dd0739b711d500"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.2/claudectl-v0.23.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31923c67b3e206c4d5de5dba9d841ca0d263b55a07b0ec4ec5a49aa837fb48cf"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
