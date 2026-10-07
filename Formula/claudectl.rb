class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.66.0/claudectl-v0.66.0-aarch64-apple-darwin.tar.gz"
      sha256 "8908ff1a7264da139e38edd950f9edc6151806e0eb5fbd23f862931a9d6e11db"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.66.0/claudectl-v0.66.0-x86_64-apple-darwin.tar.gz"
      sha256 "ad73f47fb03ee45b58df8cb021eaa36fafd30c1a983dcc51be1142cdf6db509a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.66.0/claudectl-v0.66.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5be588abceb2f14961ffa77f9f5dc96fe24187f02c1a9d89ec5a681aa8c3ab5b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.66.0/claudectl-v0.66.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac61ed35ca12ef0b5d402aa5584374ea231c0feaf84fe4cdb367dfb189f01b33"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
