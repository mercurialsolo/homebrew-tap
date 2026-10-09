class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.74.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.74.0/claudectl-v0.74.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8df04821c12a73e3c2c395f18dc5fdd6167c538ceebf01793518705ebf815b5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.74.0/claudectl-v0.74.0-x86_64-apple-darwin.tar.gz"
      sha256 "6f4d9fc7e3b7e64868f0b4d8f82e78189def887bff80ae17b4b5bf1b433b76a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.74.0/claudectl-v0.74.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a0a67718cf4a04edeed9044d6298e37c6e915ee9e624eee2d46ae982320b8c5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.74.0/claudectl-v0.74.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2849572fff6fd5e23264e1a1f4f4d6694594548d5754fd559455fb768731c021"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
