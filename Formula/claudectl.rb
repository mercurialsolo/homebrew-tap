class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.19.0/claudectl-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5e201db15fa893f916b0dee1d5e58757efc2542be66d7d3f278fe5e61d862de"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.19.0/claudectl-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "41be5c3854fcca0a2131bad1a8b6f9793b5478667c65fb36bee6ccc2ab9e9d06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.19.0/claudectl-v0.19.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ff9880f82a8cb5af2871962ce763675ec80235e5838c46b2e65af9d9043a2c1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.19.0/claudectl-v0.19.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40d17508f305136ab39606a4c01017f1d944207cf5bb4c250905bcb4d6625856"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
