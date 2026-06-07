class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.54.0/claudectl-v0.54.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf21a0826a6e14ae3fed2aeb943c0f0cfafcf5845059ab239875b75b93e1b884"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.54.0/claudectl-v0.54.0-x86_64-apple-darwin.tar.gz"
      sha256 "ac6a91f8565a3ac873a2d123297db73718753c8c2b80cc6f3b443d8779a77989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.54.0/claudectl-v0.54.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "024d044a7499863f774317a906be03577e42678e132cfef3913417159a65303f"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.54.0/claudectl-v0.54.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd5ec96bac5c62e9f478fa86f6b03b3e3ec79dae01a26d96420d38bf085d1868"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
