class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.59.0/claudectl-v0.59.0-aarch64-apple-darwin.tar.gz"
      sha256 "63b3c308bea531987a0217ffcab77c1715733c30e2f65cd871a18c8855de10e8"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.59.0/claudectl-v0.59.0-x86_64-apple-darwin.tar.gz"
      sha256 "558f118f140d549ffcc244af6c1f3b01333e95af8e5593204eb04696832182aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.59.0/claudectl-v0.59.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3730b2dcfd250be52429d6fb90637f6268f4df40e09a0330d0a80b39dfcf9c82"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.59.0/claudectl-v0.59.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e2cb59bdf2f44277aa2cf110434444834a674afba8420ef4985b95652a973d6"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
