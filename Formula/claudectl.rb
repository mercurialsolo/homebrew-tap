class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.0/claudectl-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "c798f0c2aa706ec5771900a240d8675e693d83d7866514c61da4e226c487eb63"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.0/claudectl-v0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "b533d64afb64abc7c791df4ca2d6d2068491bc968b83d29b57bc075086ef1afc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.0/claudectl-v0.25.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42f57882d8b83deb09326f2c9162a807ceb26eb157bf4a441b512857e6434069"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.0/claudectl-v0.25.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac460df9180abb0ce12246c89e86c1c2768818eb8c131e924d633c504a31f1e1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
