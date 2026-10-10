class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.79.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.79.0/claudectl-v0.79.0-aarch64-apple-darwin.tar.gz"
      sha256 "e62f2bbda38177534f291760a3bc35ace08d401ee39fbaa3861a267c51284d8e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.79.0/claudectl-v0.79.0-x86_64-apple-darwin.tar.gz"
      sha256 "5491293c2744b2c486c76989eefce9abf348d367e0544f4a3410ecab4c01a428"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.79.0/claudectl-v0.79.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c51f9d9bd58d9f5adbe5e56e0ef1b387806f87be6332442779c9136c4a5ea074"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.79.0/claudectl-v0.79.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5bb3f4e32a9acb31b7268977be45f2aad22e770a1215f362767c345a23e90be"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
