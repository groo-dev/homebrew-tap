class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.29/groo_darwin_arm64.tar.gz"
      sha256 "d066c7d67d6ee2f84dc447a7899b8e42797a1f2a4c24245927d343d0800d24da"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.29/groo_darwin_amd64.tar.gz"
      sha256 "3ad4b1939de8068ec4a7ab4aef29989548e9d4629c9c3b6dd832e4b6914476e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.29/groo_linux_arm64.tar.gz"
      sha256 "c4b99b2acd269c5af50f5d5a5a5026fe71c8476723d3d1e0b6e31e739d80f6c5"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.29/groo_linux_amd64.tar.gz"
      sha256 "2f3762ec6613ae7e9b6a033ea45bde6b9bfd7981981c89cf6b1300eb635a3e35"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
