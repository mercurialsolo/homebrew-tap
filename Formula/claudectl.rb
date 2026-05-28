class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.49.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.3/claudectl-v0.49.3-aarch64-apple-darwin.tar.gz"
      sha256 "49d754eea56821293e3b2ed5e81c006f4333d95f12bbb92f299175ae71e2e6ab"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.3/claudectl-v0.49.3-x86_64-apple-darwin.tar.gz"
      sha256 "266e8dde190dd0238b284aeaaa3fdf46ae3c1a083ff70aa2891563018bd2f9e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.3/claudectl-v0.49.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c6ea574288462a83c5002b8b3f5605e470053c7b95be19af23c41d89e24ae2e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.49.3/claudectl-v0.49.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "928f9a3bb303e7ab7f66497445b7712707705acb602c7f95fac266155a35a3e1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
