class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.57.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.2/claudectl-v0.57.2-aarch64-apple-darwin.tar.gz"
      sha256 "ca8f3312811aa9894cb13478b666fe1b060c565630dcb357409eb27f5b7d8e8b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.2/claudectl-v0.57.2-x86_64-apple-darwin.tar.gz"
      sha256 "ff31fb3975016d7dcb582142251332286bcc49c1772abf1204efa33af98784fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.2/claudectl-v0.57.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba2a21093b4b0d679c86114ed6a9167dc393e914cd525319aac6367dabf7e895"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.2/claudectl-v0.57.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac79d5ec8aceab05fff69197c69cf262c7bdae01167a4033575b6580a118f1d2"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
