class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.70.0/claudectl-v0.70.0-aarch64-apple-darwin.tar.gz"
      sha256 "f4b00fa7a39f3da8a979f64dbec9c379e8a779426f34be862720466165b61f52"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.70.0/claudectl-v0.70.0-x86_64-apple-darwin.tar.gz"
      sha256 "c265ba3696edd93dff8dc9816de8a70f875c3b05a5972ab66403d5265bea52c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.70.0/claudectl-v0.70.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b51c6446fc4d8f401d7409d3023b668fd52f3f1f048ec7e1436a537cb32ac939"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.70.0/claudectl-v0.70.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccd287556a73bc78fa2fb8f0d0bb793846657ab78ee361a40f73071ea1be34ad"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
