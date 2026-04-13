class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "bae05a600df37750472b77a71599fc8c4366bd72865c2be285cc400e6ed8e2ba"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.12.0/claudectl-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "a60b4c6cf348b227603ce1b6975ddac39e2223cf983daac3b63523eaeafea729"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
