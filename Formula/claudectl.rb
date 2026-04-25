class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.42.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.42.0/claudectl-v0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3713bb77bc27622023a2a4e1a1f40875a639ca5e5c1bded2fa48fd9165993d2"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.42.0/claudectl-v0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "ab01937676092c10537771b18465da25bbe60ed356937b3c1698d2de7770118d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.42.0/claudectl-v0.42.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "91ab9d3f075a8ff718550c0a489e7dcc5fe4950a3b93d1db9d5275e6948a392a"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.42.0/claudectl-v0.42.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af22aaf9c0085b324c773ef5858b1a4428573fe6f6bcf892551de05bcf0ae5d8"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
