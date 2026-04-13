class Claudectl < Formula
  desc "TUI for monitoring and managing Claude Code CLI sessions"
  homepage "https://github.com/mercurialsolo/claudectl"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.4/claudectl-v0.15.4-aarch64-apple-darwin.tar.gz"
      sha256 "4032d8dcec3842da821f3255b5e2e68e47f692ddbaa9cbfb8b5de3d7e7957acd"
    end

    on_intel do
      url "https://github.com/mercurialsolo/claudectl/releases/download/v0.15.4/claudectl-v0.15.4-x86_64-apple-darwin.tar.gz"
      sha256 "7478b188745f14e64a634cafbeeed9f9fda7740f11cc803dc993badac236e6e1"
    end
  end

  def install
    bin.install "claudectl"
  end

  test do
    assert_match "claudectl", shell_output("#{bin}/claudectl --version 2>&1", 0)
  end
end
