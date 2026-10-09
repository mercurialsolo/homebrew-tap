class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.77.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.77.0/claudectl-v0.77.0-aarch64-apple-darwin.tar.gz"
      sha256 "04f911a2df1f110e5400beab221b1edd5648cef719c2f88694568da9ea622856"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.77.0/claudectl-v0.77.0-x86_64-apple-darwin.tar.gz"
      sha256 "da019c4fc1a9afdf57887bc37eb0d5284d5c9af4003481b91ee2fbb2b2669385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.77.0/claudectl-v0.77.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86553127d150124e67880b280777a3417d97c0930d8b8b8063155a4f37b39efb"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.77.0/claudectl-v0.77.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5022b1962b9db1aa917a07bbab0b2efd4a6e0e7eaa340e3bd5df1f43064463b"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
