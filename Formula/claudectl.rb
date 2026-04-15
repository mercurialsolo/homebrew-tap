class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.0/claudectl-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "5d687b1a8123020ee4f2aee23cb0727d790e5f9d184689f2b7f2486b6c6fa259"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.0/claudectl-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "b452b54449e068913879cd285bc6a2fdb1d46290a821dbc0385382c3c4f17de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.0/claudectl-v0.23.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c655f4eed31425f48da335ef0138acd9f68526c375eddfbc99efa7949aa3c77"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.23.0/claudectl-v0.23.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "113a10e94bc59a3b0715ab7d3c65eff06f302d7ede9c5cd288b2536caa8a31f1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
