class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.51.0/claudectl-v0.51.0-aarch64-apple-darwin.tar.gz"
      sha256 "74bb7f2abe96b68a42366919ddb1a9ac9712144088ba93bf65de7382c8328a03"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.51.0/claudectl-v0.51.0-x86_64-apple-darwin.tar.gz"
      sha256 "84dbb2b136c4eb65aebc59f5719045291f4b9d5fcaed91be981a988b0838bcac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.51.0/claudectl-v0.51.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b66a08adf87ba6816f4a87c6dbcbaefb07aaf063d6036fab42942f08673b3cd6"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.51.0/claudectl-v0.51.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfa05e0667ca0c11c97bb70b81a9d1be079da21659305d21f1efdc841eabfb2b"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
