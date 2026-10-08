class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.68.0/claudectl-v0.68.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a8b3b46d3f3a360e2181268407a036bfd263821d32f0e84e25589cc37c96be9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.68.0/claudectl-v0.68.0-x86_64-apple-darwin.tar.gz"
      sha256 "5ab75364e953e47c801bddf54c49d9fc2ca758188d807c270c097842ea0bd6d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.68.0/claudectl-v0.68.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9eba0b7f175b3a9a955475d97c622b880fe9a8a5226446c39dcc8af35a6336c9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.68.0/claudectl-v0.68.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3c68b17228306a52426389d268077dd18935c4b29fcb6473d7e8f915a838dfe"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
