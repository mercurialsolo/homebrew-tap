class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.26.0/claudectl-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "65d3bb9e60e7f5bed05d2407a4a63a50bfe6f08bb42b91c6ccb34291f759ce9c"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.26.0/claudectl-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8e70437050b77f0a20362b2af72da192c9f99b261f0f612bc2cf6d7bb53f3bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.26.0/claudectl-v0.26.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48a4bb0d00ececf025cb499c4339064c77a52f3e00af44cfb5d25a9b17f15127"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.26.0/claudectl-v0.26.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0565e09c4088c99b2b9777bd6d45e9c0ec1e25b566a6f6739a846c6963c1d645"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
