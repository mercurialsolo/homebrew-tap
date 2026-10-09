class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.72.0/claudectl-v0.72.0-aarch64-apple-darwin.tar.gz"
      sha256 "146c7028da71e336293be780719b04f0a24595dac0f31956feed318eb5a49385"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.72.0/claudectl-v0.72.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b1fcd70fc8388f2e591000cad5553949a66754d6b87f4b1d92e571f4318ec7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.72.0/claudectl-v0.72.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c14b55e0712782e83e0179116bf1b2163e756d2a1b3dfd75fc168a28b46b23b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.72.0/claudectl-v0.72.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4872a8ef503c316b134b513c182a1530ca6ed4ac0a87ea731981465e57700733"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
