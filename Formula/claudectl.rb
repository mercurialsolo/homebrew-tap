class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7d3594c3580a3129fce12685979cae4ddad1144f3a8e1a4b560dc2a37149ea9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "6e73999f03756340152589fb7785fef5ebe4daa93e042bc2a19f449681569534"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
