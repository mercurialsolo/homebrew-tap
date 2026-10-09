class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.76.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.76.0/claudectl-v0.76.0-aarch64-apple-darwin.tar.gz"
      sha256 "380154ab4f0929832a9b20b28a76eb8239fadd7f9c52f7708b34b907dbfd3321"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.76.0/claudectl-v0.76.0-x86_64-apple-darwin.tar.gz"
      sha256 "e002f554ca4b6b65123d6e16a06b263233db5040aaa65bfadc702debd00b4c05"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.76.0/claudectl-v0.76.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abea6db4ba6b881f1fa862e2484c8f3cd944d7f5f25f48033bffb1d21d18cd03"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.76.0/claudectl-v0.76.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97203d0a98929b1c67577406941df2ec40c6413fe963a43d36b0a6e8be676dee"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
