class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.57.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.3/claudectl-v0.57.3-aarch64-apple-darwin.tar.gz"
      sha256 "9bd9384c152508c4c7e169961895ecf771f3383de17d49588418280fdeae32a2"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.3/claudectl-v0.57.3-x86_64-apple-darwin.tar.gz"
      sha256 "436787f30ca25ba12e28299a987c053af3269657536ae05c12ecde143a088b77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.3/claudectl-v0.57.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0a0787e236e0fcb279e68f244f3badec48c30295cc9b5ecc2c58e2ff4c95c64"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.3/claudectl-v0.57.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "adf7bc590bcad66a731e9c26958615753944daaaee0ded7ee077f1096a809538"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
