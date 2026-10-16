class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.90.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.0/claudectl-v0.90.0-aarch64-apple-darwin.tar.gz"
      sha256 "0edc3d7bdd454a757c11427c7f15ff21c7e6a52bafe18150aa2b96e2af80c4d1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.0/claudectl-v0.90.0-x86_64-apple-darwin.tar.gz"
      sha256 "2ebd5f5dafd1464f1c77979e43a3a11b30bde6b7e9d01a983dbeb662425cd4f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.0/claudectl-v0.90.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "519d8222d5e2364ac85acc864d6155f5a349a023fa8eb8b23923a61830a4d4e5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.0/claudectl-v0.90.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "711838db3d8e29d3d88832525174a0a60c025c1a56cf895c2c58750b30373d44"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
