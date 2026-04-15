class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.2/claudectl-v0.25.2-aarch64-apple-darwin.tar.gz"
      sha256 "349a49dbf4b6e1ea22b88bd16b06c489870aafc62fd59f76635cb1628f065408"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.2/claudectl-v0.25.2-x86_64-apple-darwin.tar.gz"
      sha256 "e2297686a5dfa2c32dfec5e618b1e5c8951a580ed12107483551354a08bddfa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.2/claudectl-v0.25.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a316a24ab0ad263c14ba8d465bff2ea8a79f03d313214bae0bffcf4f1cfc439"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.25.2/claudectl-v0.25.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "918a761fd26d69a57af001f9f274c5e2ea66f46ec319fb03b57e159f6061332e"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
