class Claudectl < Formula
  desc "Hive mind for Claude Code that learns from you once and remembers everywhere"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.90.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.1/claudectl-v0.90.1-aarch64-apple-darwin.tar.gz"
      sha256 "d961c4a4a7064f2c3e4079c0f161aa0ba8ccaec6bf74ad35cb78b127a0c28d23"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.1/claudectl-v0.90.1-x86_64-apple-darwin.tar.gz"
      sha256 "69d185afef6843697dffdf638fa6ff9c5cb1f1509d159dd0cb8e648472c8532c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.1/claudectl-v0.90.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b540844dc1c2875c92f7de362321437c4ad6f2797804834f436932fbc35bd56d"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.90.1/claudectl-v0.90.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "066bfe22ccb3521be89faab742cc60e3396d4242b3e4e2551b3508686850a230"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
