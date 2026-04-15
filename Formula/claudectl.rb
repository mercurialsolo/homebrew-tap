class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.24.0/claudectl-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3b86942f2e34ef5879a8db9fbee23ebc68c9e457c565eef93dfe1b9b658f863"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.24.0/claudectl-v0.24.0-x86_64-apple-darwin.tar.gz"
      sha256 "773477890bea7b929c1ff3532616c3c007cdf7bbab8a289484d8748d3bd1accd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.24.0/claudectl-v0.24.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e4231331ca91ff998910e3b874fed6d73af45fb04107ff7aea0b6583d1f33e7"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.24.0/claudectl-v0.24.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08025dff3c6c926eb9ead5742fa7f014fd3bdbde01b6fcd28ab417f6e5fe9a02"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
