class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.1/claudectl-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "ad3ae0bbd1c0e54be7704649d705ff6fc155b20fab91bb32b68a44685077f7a4"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.1/claudectl-v0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "4f00eee8a4d879bf67178fc66cdcff3bb543d86b8f65a2276e1120617c123544"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.1/claudectl-v0.16.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28e65e0a4b83488590e5e67837f08fba52418156583397f4c55a8fe7513c25f4"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.16.1/claudectl-v0.16.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce06ed89d904e8c84665923e4f291de5cdb313af69e0c9a579c2827bf17d24e1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
