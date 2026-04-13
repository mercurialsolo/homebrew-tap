class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.3/claudectl-v0.13.3-aarch64-apple-darwin.tar.gz"
      sha256 "dcd12a1bec762935cb9754b3ff527d7f1ed0b98182123d4de96e90cde8bd0d6d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.3/claudectl-v0.13.3-x86_64-apple-darwin.tar.gz"
      sha256 "6b4267061b663461fe76f29d055449c908d76ae274b2b0e7938f50f240bc72e3"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
