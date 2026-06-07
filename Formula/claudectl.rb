class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.57.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.1/claudectl-v0.57.1-aarch64-apple-darwin.tar.gz"
      sha256 "370798c634f9e97eb8642ae2f327934e446685e6f4bb3324c4104754c87e2a3f"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.1/claudectl-v0.57.1-x86_64-apple-darwin.tar.gz"
      sha256 "8342586e2c1428ef9af9831c561b77b3c8643a9fb4df4dba20ca8bcfd0e66539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.1/claudectl-v0.57.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fcb7399e17bb32f6584f59bd27c6793a659dd7ebe5ae839cd86f2e841128ea70"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.57.1/claudectl-v0.57.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2da319f5895277403a7b14aa0da3321517db992db98ad1af72b6b61db40084e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
