class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.1/claudectl-v0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "c83f71df89bd8bf4d35aebc094bc761999b688efec50286e8b51cd51213cd5e4"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.1/claudectl-v0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "75ac185a3ce296eea03ae1733d7e071ef1987ff1983cf501f7c6c51ea88b4052"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
