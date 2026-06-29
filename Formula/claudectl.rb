class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.60.0/claudectl-v0.60.0-aarch64-apple-darwin.tar.gz"
      sha256 "41c010a8a2f3e046ac4f82a21b38144b15f7f701d352aa7a4de83e2abcf37d29"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.60.0/claudectl-v0.60.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd1db996d23b2c7e2e9b375b8cd8f094e84c8316a1bf95cb72fcd226d5db7809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.60.0/claudectl-v0.60.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab67f719e3443828c40d87c1abe3781cea29ebcff6f7f2357fb59cdd292af890"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.60.0/claudectl-v0.60.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12b06bb895ad8b7e6d3967ab8a53a040eb698a1c6ad04161788fedeca3829a29"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
