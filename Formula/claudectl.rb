class Claudectl < Formula
  desc "Hive mind for Claude Code - learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.80.0/claudectl-v0.80.0-aarch64-apple-darwin.tar.gz"
      sha256 "a4429d9dbb2b94e5c7b43bc55660b6f5bc3f5744c0fdbf783110520d080954fc"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.80.0/claudectl-v0.80.0-x86_64-apple-darwin.tar.gz"
      sha256 "7a331d42d46a666e57b1a1202a7bb0701115f92f3450f4da84762f87a014592c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.80.0/claudectl-v0.80.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e22c6be45f863d4e0fc7dcdda8a6650d5b9ce8cee5a20963cd7f4a833012a1e5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.80.0/claudectl-v0.80.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79e20ef60cf8ad758c220f0fd74e8b34a642c0d4d6d4791bba53a86b52863046"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
