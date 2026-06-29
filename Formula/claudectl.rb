class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.61.0/claudectl-v0.61.0-aarch64-apple-darwin.tar.gz"
      sha256 "9aaabd6a22e60b748fc98b47f58cd9655b3c236d6f8970fe1d9134e35199b4c3"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.61.0/claudectl-v0.61.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbe1f832060b68089e95f55b44307681b183352a7d7e74b5a9f0f7c608ee8b30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.61.0/claudectl-v0.61.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2d3584b91c7d55c34b2e3eebc91df5443c1a0ff6f48f7c215fbce08ac99ccac"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.61.0/claudectl-v0.61.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fbfdb899d16a8c1b7a4e46db40dcd0c5cf7c8727fee486370a8f919c528f18f4"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
