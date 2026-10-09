class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.75.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.75.0/claudectl-v0.75.0-aarch64-apple-darwin.tar.gz"
      sha256 "8e1ef38d1f381fa01e781db3ce8cf1e46e725257f677257c68fad1a910e201f2"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.75.0/claudectl-v0.75.0-x86_64-apple-darwin.tar.gz"
      sha256 "aae2a2cc09fc2cc17c144bbc83d0ec1916e9025f7df2792c230546f708751b5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.75.0/claudectl-v0.75.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ae5987defc7364efe3fbfdaf9e86d92d3cdba5ee0fb04e4425070c358ba6047"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.75.0/claudectl-v0.75.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0864678eea96ed72807cb70a0d73f0455a95a098f42f8619cc31dcb0165fe3e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
