class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.1/claudectl-v0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "cb2e3a47c584287e4e763d9af93d87c03f0b2c742a15e2c73872c0285277a959"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.1/claudectl-v0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "84e0b075d7381257a6598153d59ef8265f3a12dae74989f91ac9ae44c59bd73c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.1/claudectl-v0.29.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "21e3dc5a80db289867038e40536497fca04cef9130994d843e5883896171a3ee"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.29.1/claudectl-v0.29.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "51522df55daa5e1c643bb5e15aadc08b60dd3ed97e43fd8e699a14223952cf1f"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
