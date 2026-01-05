class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.22/groo_darwin_arm64.tar.gz"
      sha256 "93c03fc3d4d27538a91378e752d9b638c2642e12aa34e57af3cd5054b800149f"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.22/groo_darwin_amd64.tar.gz"
      sha256 "fdcfe4f4790dab4bd4cf69a975f9de030270e12171d1b8e114c022dc88e0bcf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.22/groo_linux_arm64.tar.gz"
      sha256 "4e7090d9cd14274446b1ecf6586035f995e5703cc462487a5351a7f460a24ba5"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.22/groo_linux_amd64.tar.gz"
      sha256 "d6c1bb20983dc05397e3962efb67379a3d9ee2add1f403233d7cfb1721285ad1"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
