class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.3/claudectl-v0.8.3-aarch64-apple-darwin.tar.gz"
      sha256 "17f811a6bf6479c626ec83804582d3655eba1145ca977ad98e94b2c7e61dcc1e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.8.3/claudectl-v0.8.3-x86_64-apple-darwin.tar.gz"
      sha256 "3fa9d4eb7fdcfe981cf5621bbb9ee0589628491bd5e558c58929c001468f6908"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
