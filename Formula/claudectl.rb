class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.57.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.0/claudectl-v0.57.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff63b907ec79211f6b6ec239be1c821f603ac70821806b48a3f7275b71e399ef"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.0/claudectl-v0.57.0-x86_64-apple-darwin.tar.gz"
      sha256 "9e794916df322b2c12dc9de5d57b0fbac34eb9b1d0ae464a80323b11c00abb85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.0/claudectl-v0.57.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aafff14f3756da6d4a762d61bfd64cd0399ecbe9be6fb298a170aadd6be4a053"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.0/claudectl-v0.57.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8fe9da902d97dd565fd9cb6391643cc02e8c1837bf3fca359127455dd4198c3"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
