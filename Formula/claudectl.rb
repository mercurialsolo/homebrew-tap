class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.64.0/claudectl-v0.64.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8c092ef5b281125659f542f14015f7316d11300c80fc3534d29ef808e860a93"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.64.0/claudectl-v0.64.0-x86_64-apple-darwin.tar.gz"
      sha256 "c368c9a734bece0beafb54c9da0aa4f04d4100f057c576dc42dfb9123b0345e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.64.0/claudectl-v0.64.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb4fda6fa52074200b9213669af83351cffcee9c0c238da8c8367be28a33c400"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.64.0/claudectl-v0.64.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94097e646a92dc3bde028c271d47981c1afe28386914b14d1b48d77a98af0815"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
