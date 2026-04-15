class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.1/claudectl-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "382a5e54bc50fbf854af2e688779b8060391aaa631d1c023d3249a982100aad5"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.1/claudectl-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "2a0ee3351911eaf14b3992f735f371f4ec66485576de07c59affa17d6641affc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.1/claudectl-v0.17.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dede230a0abd26b7ac6e695db22ed64747c584d0a1f7cd0661a71e241385293c"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.17.1/claudectl-v0.17.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec73656afeb5ac42fc6642f9bdb41dd7f19f5c7b2820ea4354288cf88c54cc67"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
