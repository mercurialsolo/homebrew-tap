class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.29.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.2/claudectl-v0.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "728c8abb6895ebff3570f0dfda1d43ce5f73f8cf5ab8382da5d8edf13c84347e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.2/claudectl-v0.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "ed315e6cb416d5e9dd0da30f9052575959ed155edfeb3bf2915b5e141d9c819a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.2/claudectl-v0.29.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d84e0b0e7e003364b883a2ddbaaab91b491fb29f5187ebe4a962ef365f140a64"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.2/claudectl-v0.29.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de6ff54db3cc3fba1ced734cdebaebe3c45a943ab181d32da1ceb5b984c706cf"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
