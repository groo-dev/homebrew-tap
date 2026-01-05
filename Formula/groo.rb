class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.18/groo_darwin_arm64.tar.gz"
      sha256 "b60daff0b68dba1e537e625fa19c329511a6ff969532748127741048de6fc85a"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.18/groo_darwin_amd64.tar.gz"
      sha256 "04d7ad37ad7fc4d57a8428339730750c2e4cad65eb665420ca0deb7cf9d2d3ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.18/groo_linux_arm64.tar.gz"
      sha256 "dbb0d44f02d19acbf5aa3c04b75f2b2c19e9904b3e7890a6df80cf8e04122025"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.18/groo_linux_amd64.tar.gz"
      sha256 "28f1430bfc0651a946cff97075c68cdd862d31149ca4ea6960f49aec575dfd8b"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
