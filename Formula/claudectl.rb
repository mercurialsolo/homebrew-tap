class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.92.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.2/claudectl-v0.92.2-aarch64-apple-darwin.tar.gz"
      sha256 "0882e4b6fe53f5e0d0111e43ce0d0bb77715f3e7bc02c909a86fb2d56aafb96d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.2/claudectl-v0.92.2-x86_64-apple-darwin.tar.gz"
      sha256 "0bd746feb5d27b65790b8eccf372b9fd20146f737ee3e0da9c008294a1341139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.2/claudectl-v0.92.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca477a54c3d473c41ec9be105bce373d0858010ed5aa1b11ccd40938236c7249"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.2/claudectl-v0.92.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8f3a6aea3dedfa6ab38e7fdad64f97f46e373f4cb6056b660dabb7192f1bab2"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
