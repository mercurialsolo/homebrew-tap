class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.14.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.4/claudectl-v0.14.4-aarch64-apple-darwin.tar.gz"
      sha256 "9795bb6c977027535861c5c9546cbcbdd55217d3103f18cea37c959c8ef88eae"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.4/claudectl-v0.14.4-x86_64-apple-darwin.tar.gz"
      sha256 "1b007f247c55e855d6a0b68a84e2cd2671ef08dffb1af3b415db227561275c3c"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
