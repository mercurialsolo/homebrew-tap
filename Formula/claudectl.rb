class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.47.0/claudectl-v0.47.0-aarch64-apple-darwin.tar.gz"
      sha256 "a87a3956eece989db5348f2d5d53f5d5bd38a6f263a7b8f5fe0b0c1e61eb5073"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.47.0/claudectl-v0.47.0-x86_64-apple-darwin.tar.gz"
      sha256 "8724453998baabaa3134705c5b18b6fe92c8478d034f23158e5b8cdfc9ce7b37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.47.0/claudectl-v0.47.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "754f210953ec12addb5e657bf238dfe3796a9535382c92ac149b7e4d84205ec9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.47.0/claudectl-v0.47.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ef3befd926cad32eb92d095a90553e059ace186b67adb8a3520e73fe5312a18"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
