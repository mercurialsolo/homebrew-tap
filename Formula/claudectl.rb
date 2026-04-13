class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.10.1/claudectl-v0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "2c2bae4ace5201b41cda9c41589f78353de5c6e6bbdf952e975da9b49b7e3bd5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.10.1/claudectl-v0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "9141a9ec24975beafa2eb49db1f03fb90dbb18fcc2b4044fc35c91130ef790db"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
