class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.62.0/claudectl-v0.62.0-aarch64-apple-darwin.tar.gz"
      sha256 "738b91b3c53b9a07c64b841fef982a33716d8c9d474342ec740c053a2519c9da"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.62.0/claudectl-v0.62.0-x86_64-apple-darwin.tar.gz"
      sha256 "0c45811de1ff7cc44b4de2722d04d071c671cdf9fd66f0244f33bca5bca96024"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.62.0/claudectl-v0.62.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "193a148f929be1889f90a03e0ff8b3858f652a58eefe365259b12bca0cdb9729"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.62.0/claudectl-v0.62.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44d312a8c7e892d83c50a75a5be64dc88fe158408579bbc8d3bda5213aa2ea64"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
