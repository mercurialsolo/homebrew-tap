class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.55.0/claudectl-v0.55.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1e58d5d6ca434bfcd3329530e1558391da37c48911bd4b8d4fe0bb8533f0648"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.55.0/claudectl-v0.55.0-x86_64-apple-darwin.tar.gz"
      sha256 "ae954e191126fe769fde734777f6a8f7dc992d406bddd30d1a1c9aa18c4ee928"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.55.0/claudectl-v0.55.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0ed0d5b95f6428f1f4c497e45e5b5c73d82bd7489a384eaeb5905f9af4f0909"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.55.0/claudectl-v0.55.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97433fe4fa0b1cf8ec6fc75667e1b7f2bcd92849db0a0f49293bb9a9bc5bd74b"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
