class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.73.0/claudectl-v0.73.0-aarch64-apple-darwin.tar.gz"
      sha256 "76d1431d8b5cc3b35bccaf94d4577420f3171664dbbbf76f06cac5a7fdfaddc1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.73.0/claudectl-v0.73.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee6e582705f719831c5aa9fd08b4775b5cc6e036503551b27472c93f2dc0d903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.73.0/claudectl-v0.73.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9aa2c156e79f42f3690b73e129fdf6f2e7388f8998476661cb826b6f363bb99"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.73.0/claudectl-v0.73.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0de4979e41d86bd908ed4577644ca4162fe7d2b3dac358f36ab0dcbb57d8eb1a"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
