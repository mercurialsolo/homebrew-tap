class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.22.0/claudectl-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "790035117686910833196171348a578ea1dabb840721519bae43ecfaface9d5b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.22.0/claudectl-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "9b6252864978e21846148d67891e3d9993d441739e55a6c85a30bb25962d3332"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.22.0/claudectl-v0.22.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8077e8b4b03b0ab03918a9aa84d37cd7d7dd3c952905c3391118f71acfcfa03"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.22.0/claudectl-v0.22.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f444ab037772b1677748f4b6b2c5e4a038aab438469f3eee58ac0cdbbcbf61c6"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
