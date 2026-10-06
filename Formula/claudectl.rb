class Claudectl < Formula
  desc "Orchestrate a swarm of Claude Code agents with a learning local-LLM brain"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.65.0/claudectl-v0.65.0-aarch64-apple-darwin.tar.gz"
      sha256 "39e90b9966edbde974372010e5815b0a30acc0ba8c2d00e61873c7326537a221"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.65.0/claudectl-v0.65.0-x86_64-apple-darwin.tar.gz"
      sha256 "77d659ef194a2f492253dbac372faf594140f0b63b91e1e92cf878fb243f6c12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.65.0/claudectl-v0.65.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e67f3f8a0dea9487edf14580b4c72aec1c2851a696346935b25c880a5fdb27f9"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.65.0/claudectl-v0.65.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2611bcc48a96317dd453695b2bb7105d46c4406fde730e63357be648cf78d7ba"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
