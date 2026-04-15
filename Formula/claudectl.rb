class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.0/claudectl-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "e5436d1cc551089fb029cb5076970501760e87947d63dae23dc9034214f460ae"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.0/claudectl-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "d75f5ba3671e46d9bd210c409685d6ed441e65354f207a5a93dd731f9819ea47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.0/claudectl-v0.18.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e15e455efe4b07fbf20e575647da58e27d018d755e05827192a55aa53f413aa"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.0/claudectl-v0.18.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce9d0a6924fe8b507a4ff1448edf9efe294462e3ad983034fc38467d9586030f"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
