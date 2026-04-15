class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.1/claudectl-v0.25.1-aarch64-apple-darwin.tar.gz"
      sha256 "8e8869eaac5abf8533873c5e6a02198a4148228ea05efb0e614e99fe422c0b30"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.1/claudectl-v0.25.1-x86_64-apple-darwin.tar.gz"
      sha256 "cb8262cbb6a271c94608445fe08ad0a2cdec6154fb7d7274496c1a8dfe68cff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.1/claudectl-v0.25.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bdbba854b3904943f38223837623c334daece967ead79daa1a300fcad7ccf04c"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.1/claudectl-v0.25.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "831294a6b64668c17788ac062cd162d76b349b1a5745c0a56504568705ff8dac"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
