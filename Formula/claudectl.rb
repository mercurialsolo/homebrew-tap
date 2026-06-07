class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.56.0/claudectl-v0.56.0-aarch64-apple-darwin.tar.gz"
      sha256 "d07fe0af6eb0f9a1585b86a6ffc976c0c2ccba8e3d6cce4b099f3622c048c3a6"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.56.0/claudectl-v0.56.0-x86_64-apple-darwin.tar.gz"
      sha256 "a1f6eff71a9c0d712991c25dd267d3498a84ddde288ef28d95086c5cfa22022e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.56.0/claudectl-v0.56.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9839027c6c2dfb5ab7f1769e21710006917f5a3d1db048c846533df64f0dabf"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.56.0/claudectl-v0.56.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed5fdd61add09d02de6ad00817f70bf703acf82772acade16974018dd5bc175b"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
