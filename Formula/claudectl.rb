class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.41.0/claudectl-v0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "cb8d02627dc619cc7642f5612a34058dc2b93fa7a6c4b69709537df64d77b892"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.41.0/claudectl-v0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "06be0e4d17994c27be82af7e96c9a5c682634d6039ebf63bcb1b8d83f0448dbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.41.0/claudectl-v0.41.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b2b5e40f7e912c4e0aa47339cf40547ff76147e4476b891ff590300082199cd"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.41.0/claudectl-v0.41.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00a892f238f4781666bd967804a023a66b8efa783c78dd1703d4127b91bccbdf"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
