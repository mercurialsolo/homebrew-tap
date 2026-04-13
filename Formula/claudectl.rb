class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.0/claudectl-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "b011b62fd51eea9081cd61bc7ec1b50303255b52a9104440d9872b3d47894729"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.11.0/claudectl-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "948ec160fd6b2fce35d2a0152880cc801f4939fba70d7df27141f00c568eccc9"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
