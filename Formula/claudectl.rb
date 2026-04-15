class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.2/claudectl-v0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "372584f8933b10b1d41587389675a429a50f4c202f0c984776b7cd1d4fe43788"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.2/claudectl-v0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "3d6b0f5619c2107145f5a225807b32d01563107479cf639840d0ab034778c305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.2/claudectl-v0.18.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "212e69586a44f01f041acd5b9610b0c99451734d6e6a4516c7d19fd251486523"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.18.2/claudectl-v0.18.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f702a621aa01e800412946cab04a346c2a11048ad02286d526286ad9a7b1ce5a"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
