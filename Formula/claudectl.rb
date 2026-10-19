class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.91.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.91.1/claudectl-v0.91.1-aarch64-apple-darwin.tar.gz"
      sha256 "44e7124f49d3fc071e3605e1829f843d56078dc584d5d7121698b4b2a279ae58"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.91.1/claudectl-v0.91.1-x86_64-apple-darwin.tar.gz"
      sha256 "9f732b5285e75a5c4212ade94d42f4d6d15c4fc7610f15b0e974bb045278b818"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.91.1/claudectl-v0.91.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fa81ec92754eb19a503dbc960fc71120a78855063fca4a9e510890dd43e362e6"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.91.1/claudectl-v0.91.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8c83954de98923ce61d761b8ab3414702237313377d340365e67b219af08f49d"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
