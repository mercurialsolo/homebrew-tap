class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.31.0/claudectl-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "4a7365b55172ba9bbda7103846f665e87f46ce22e02ee42fc9c98b55a740a510"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.31.0/claudectl-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "29a5174528930216e14afae77a435043df15e5c2403cc57333f5d53992ca048a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.31.0/claudectl-v0.31.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7bdaea2c061cd0154aa1ba703132c4edb286e2ec463c2c9671024998267e1013"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.31.0/claudectl-v0.31.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c66a9747cbd7490e0c7a570e7618fd0509a4f5c54a0617397d1a0e946db063a6"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
