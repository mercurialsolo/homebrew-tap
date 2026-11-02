class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.92.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.4/claudectl-v0.92.4-aarch64-apple-darwin.tar.gz"
      sha256 "c7885411db08ebbb35a0e6e7cb97a96b7d3f263152a37b04014c4c9e670b3bee"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.4/claudectl-v0.92.4-x86_64-apple-darwin.tar.gz"
      sha256 "ab9f1ae8cfd4057b5c237705b9bed3b4c8f2aef4a922d458aca3cf2882f04706"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.4/claudectl-v0.92.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf2d7d7b049957b8878010c3790a225298806b6be04ca535c05bc2c66fdeec37"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.4/claudectl-v0.92.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79d94d9fed76f207a93e22b1ec5d55b3ae32d545f99493584a1611dda5b8c545"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
