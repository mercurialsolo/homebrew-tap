class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.63.0/claudectl-v0.63.0-aarch64-apple-darwin.tar.gz"
      sha256 "f91ee570eed891b543375a91cd44d041304737ade6d9d85a43af65ab4a66dc84"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.63.0/claudectl-v0.63.0-x86_64-apple-darwin.tar.gz"
      sha256 "d5f5e4e458a276afef5968b72855580c0cbd2a6d22f35038703116bc14f4b14d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.63.0/claudectl-v0.63.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "381bd4e418939dadee68a5e35f23000879e14487d2c853ea59ec542598ee092a"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.63.0/claudectl-v0.63.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6292abfcc2e3ea1ee31a705a11fa48e2a6083b3115f13a26370b3ba2277914e2"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
