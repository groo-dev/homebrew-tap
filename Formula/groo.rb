class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.35/groo_darwin_arm64.tar.gz"
      sha256 "8c5970803c805a357e9b724f28d6bd5ed99bc9f90321dfb32e9c1a9ac9c101ce"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.35/groo_darwin_amd64.tar.gz"
      sha256 "b539cf12e086743f2c8b6c26fbeea0b530b62acaa59b9b0217f95299c98c5633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.35/groo_linux_arm64.tar.gz"
      sha256 "190ab0ce9ed99b5c1ae43c05bdacb7642d36ef2f2987bd89e136c94cac4d85a2"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.35/groo_linux_amd64.tar.gz"
      sha256 "f24e6b0af1393ac0364ac28d16ebc2c641837dd025766707828d6a82133088ac"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
