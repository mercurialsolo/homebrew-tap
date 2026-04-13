class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.1/claudectl-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "a076a55045b148dd03bd9396dcc6435349fa65479cf5828eaf5ea85a58032d62"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.14.1/claudectl-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "b42d665c84dc49f39e464ef71286613ba6394be2804a3681489f87a4516837e1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
