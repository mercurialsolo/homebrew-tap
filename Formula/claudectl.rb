class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.78.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.78.0/claudectl-v0.78.0-aarch64-apple-darwin.tar.gz"
      sha256 "80fdf12ce2abe14a321cf4d87efb44d1cff41418be50e73c529b40009a0bc6f2"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.78.0/claudectl-v0.78.0-x86_64-apple-darwin.tar.gz"
      sha256 "5864b109529eb14bcfb900f01b83f6728e62e374d5a1b31c17c1bf8f2d10fd5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.78.0/claudectl-v0.78.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf10f37df58a5409688847b71d8985348c4bb6dad646cd3be8168a1cf9c66871"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.78.0/claudectl-v0.78.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1989b6f02a1489a50259c16f1708684d7d1a102449a080fce7241b652c16b109"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
