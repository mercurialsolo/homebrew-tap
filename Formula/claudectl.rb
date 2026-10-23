class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.92.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.3/claudectl-v0.92.3-aarch64-apple-darwin.tar.gz"
      sha256 "c82b48261a99e5f3512b0976936d07f91af834ba2950c8b61625e8ff8adb063b"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.3/claudectl-v0.92.3-x86_64-apple-darwin.tar.gz"
      sha256 "5d99c86b05682a26aae8046512f777ac2e9b95d8d543073cdb7300eb628f507e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.3/claudectl-v0.92.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "748c1d8c5bf506287ac11ef04c37a56c21e36192edb07cfd59cdaf6e418b5b47"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.92.3/claudectl-v0.92.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1186dc786fa1296226be66805c2d8ccc056cab5df496e42ace66b1c357c5325"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
