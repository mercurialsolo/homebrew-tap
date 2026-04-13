class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.0/claudectl-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ca22709dcf914b2b49fb08ac5a04909f1ac1e85b7b9975be23c904506b6036a"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.0/claudectl-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "7358eefc8d94553a0b73a66d56737ee5c31533780f4f4ca978b0695c189c4b8e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
