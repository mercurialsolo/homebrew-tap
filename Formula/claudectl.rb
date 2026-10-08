class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.69.0/claudectl-v0.69.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f2fcb3a8e498a7b2cfaf58eed62214bed1f1049e61d3d0ce101f6f369bf1c99"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.69.0/claudectl-v0.69.0-x86_64-apple-darwin.tar.gz"
      sha256 "c3690953c024f540a57b5098f30509205fdaab84e56f0ec1208aaf4b76c4eb12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.69.0/claudectl-v0.69.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "394d2b161544762db7e72822070df8f7ed28deb6a37968a00b39761ec54e426f"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.69.0/claudectl-v0.69.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9501a86243893f097aaafad8302a7ac9f79cafcbd85be9bc228579e1ef58c610"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
