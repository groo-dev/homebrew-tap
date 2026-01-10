class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.31/groo_darwin_arm64.tar.gz"
      sha256 "32b2ffc22ad9c37f0bd54f8de1ea524c55c4253d83e37b5ede49653c3a3104de"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.31/groo_darwin_amd64.tar.gz"
      sha256 "0aa20dbdca2ac13b5ebfc0e2203d52be0e01cdcc8b3bf133bd02d16df974f540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.31/groo_linux_arm64.tar.gz"
      sha256 "e7b95d92515c2e10bff43c64503af5e54220042251a49e61c82d26fc8f328b99"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.31/groo_linux_amd64.tar.gz"
      sha256 "619dfab2da96e0bfa4da09707ce72e97171d0f1b12666273268f5a89aa2f4b68"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
