class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.17/groo_darwin_arm64.tar.gz"
      sha256 "d4b6381872f11d8c6099e615c53d83ad301453196b52ad118310577ff1b9147c"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.17/groo_darwin_amd64.tar.gz"
      sha256 "3bb4f83dc0686575bbc2367156ad80492b43f7860c13a92bc8f453b80eab56a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.17/groo_linux_arm64.tar.gz"
      sha256 "0d353501fde42f7b1a0ab9d2f52bcb5ca57605e08fddda84824c7e9af521bca2"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.17/groo_linux_amd64.tar.gz"
      sha256 "14235f5e2b87d3bcd63b0a31c44bee0df61c2f09dbb7c1341ddfe42b87cb8ac0"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
