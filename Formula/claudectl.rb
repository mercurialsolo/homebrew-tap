class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.58.0/claudectl-v0.58.0-aarch64-apple-darwin.tar.gz"
      sha256 "d275f2dbe680e26f3e0138673d85b61d39184ee50b339e6cef9ba188acc8facd"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.58.0/claudectl-v0.58.0-x86_64-apple-darwin.tar.gz"
      sha256 "7497316c3bfcfe2e821b1e351c3f230311658b589d7c592718d39d8de0c85611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.58.0/claudectl-v0.58.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dede5d9bca9cd8b713513b202a8f1c3a51f52511c5d0603f0af339ea617b0b71"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.58.0/claudectl-v0.58.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d255c5e7745686cc7804ff53c22de189cab0c849686efbdafe454e591630c82c"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
