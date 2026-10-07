class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.67.0/claudectl-v0.67.0-aarch64-apple-darwin.tar.gz"
      sha256 "adaca944f2b0880446e172a96d54083e5e00814afdcbdb8a1d94cfca11d208e1"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.67.0/claudectl-v0.67.0-x86_64-apple-darwin.tar.gz"
      sha256 "bba20b7fe2ee9475eccbfbca030e319d179850d3f4230c0f6d82924afab3c66d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.67.0/claudectl-v0.67.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea143970752dc3dc2c02844fcb51e9f907120f6a99ce32906f797a0811606376"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.67.0/claudectl-v0.67.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e78f77c3c074c6b1b0da0d7f8256291a0320d4d25d4e77fae021e6202385087e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
