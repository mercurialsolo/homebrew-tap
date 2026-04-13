class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.2/claudectl-v0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "ee68850b71d276f5d7f93b41e571b305371bbd184d0b4b40c31be07253be6e1e"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.2/claudectl-v0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "373efbc69d0234481986e71777c8934d48fd1ea33efd9eba55622013049ae4fa"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
