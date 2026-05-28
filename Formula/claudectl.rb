class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.49.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.2/claudectl-v0.49.2-aarch64-apple-darwin.tar.gz"
      sha256 "55d903608994c6f4a84a5d2ae987328d8efadbd876b506bb35617bc1ee58ec94"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.2/claudectl-v0.49.2-x86_64-apple-darwin.tar.gz"
      sha256 "f197f360cf2f4208d4854cbbd2cd62f85370c7bf758d01affff675b014df388a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.2/claudectl-v0.49.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "66aff15a8ce27a38d44ec55028c21957a64fc3e16d01d3f8f28f3d70b4480079"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.2/claudectl-v0.49.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b7c8f28a1c2708770903e4041a8263385266fce69bade26d88f2a16f2fb8b09"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
