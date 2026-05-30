class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.50.0/claudectl-v0.50.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ccca4994cd5820baa7c0d4fa79a9b7ecc66d5f11240fd68db46d7a0a19e93b9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.50.0/claudectl-v0.50.0-x86_64-apple-darwin.tar.gz"
      sha256 "24fb69fb60dcb682bb0b0da22f5ad74e4e338c9a4deb86f5b59972a5c96433e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.50.0/claudectl-v0.50.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "631537ea54957d870fb235a632823abcf5758cc954bc287018a963fa04503029"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.50.0/claudectl-v0.50.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "795ce463c52168e9fea5769c5756a56ce8c5dd2e440bc1fe1e1a1383fb290121"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
