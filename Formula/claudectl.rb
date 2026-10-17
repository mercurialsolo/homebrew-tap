class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.90.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.2/claudectl-v0.90.2-aarch64-apple-darwin.tar.gz"
      sha256 "4ca7bd32e465446a6ed57f7843a87f85ee5d55e2cbfa2c226a81658c889378d8"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.2/claudectl-v0.90.2-x86_64-apple-darwin.tar.gz"
      sha256 "b46085c3ce79a637977336e1c35e7fb50970010d2aea0a6e49ab3dea6ec34154"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.2/claudectl-v0.90.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77b9c2740c63a5d9b925d72f216c5824870cd30ceef0921ed215f285f36f8de7"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.2/claudectl-v0.90.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22409e310b1e6f20e353dd63b2901f1c8b4512e3cb915b9b721cd91983f25f8a"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
