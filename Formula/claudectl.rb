class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.71.0/claudectl-v0.71.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc06e0f312c4fb21cb34a8dcc0b126c6e1a8299cf6316fca285532af4a82b9bb"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.71.0/claudectl-v0.71.0-x86_64-apple-darwin.tar.gz"
      sha256 "b88314b070218097cf9a6874e9da9e85a303a265efc48572f005267cc93540bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.71.0/claudectl-v0.71.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f05d3d93280a2b2e92f691479234c39a649e2e7be4538c0868dfa23d83efefae"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.71.0/claudectl-v0.71.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8561e9789f71093651ff57824c4bab5d93f1508abe4b72892f4cde36e1bf3f14"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
