class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.0/claudectl-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0c3eb0aafcf4b2864e906708792582b291a3023958e5cb0f0ea18edae2e714b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.0/claudectl-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1bcd9f7d4d4bae79ce9981dad7f55aef1094d1dc9e2eab494b550f7116bf797"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.0/claudectl-v0.16.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbbd7fdd3e37871d7c59b9902440f160c51de597e952eed88819a5755d65c932"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.0/claudectl-v0.16.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3832a8f29b30368aa1e139f4563353c6abf9de09af649c527a29ae9814f2926f"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
