class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.0/claudectl-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "063e36a28b8751a80e0a72b64bde55da6dc8cf0058e2c206c27c5e7ef55b3ef8"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.13.0/claudectl-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "95294b6b131425aad4c097d1754bae6ab16ad03d24105068d9673481304521f6"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
