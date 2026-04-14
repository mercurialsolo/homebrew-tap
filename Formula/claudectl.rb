class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.0/claudectl-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "be91f35800d374d3a95a6cca018491f6e5c4b3ecd503e125718461b7c57a144b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.0/claudectl-v0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "6c3f2f6064dc94ed60528d6f9ee31190ab03a9417114fe4766b89747e64b9b62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.0/claudectl-v0.17.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59b52480fcb0a91e51bad1008ea18bfa87798f46da45b7a0203af05c83219bc7"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.0/claudectl-v0.17.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d362bbaee188f14220381946b702e2098b238aff344eab2ab94d5fcbb0644336"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
