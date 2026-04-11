class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.0/claudectl-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "ee5139da9fd9d4df86e34ebb4962d1e0d7355a2c092ce22652ffa89529116cdb"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.0/claudectl-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "65abc95174b00e9f002b10a9f22e2bc7840905cfe38f7f5bc57c466273610a94"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
