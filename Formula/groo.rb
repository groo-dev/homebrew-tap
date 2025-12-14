class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.6/groo_darwin_arm64.tar.gz"
      sha256 "b28bfde0a52d4d1be90a1bebfa543d73d70dee318f25256632dd047c277b7821"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.6/groo_darwin_amd64.tar.gz"
      sha256 "b295c32f0ea6b674ead529f8e06fa966ebc009d00ed66cea996f8c795c398e91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.6/groo_linux_arm64.tar.gz"
      sha256 "96f3cdbdb6eceb468b198b04c46eb3f64ffbafbdd2ebb206b4f3f783d2e6af35"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.6/groo_linux_amd64.tar.gz"
      sha256 "e22f1945a3c7b7a72d60d55f1730200572985ebf5b36b6b004b699c8a72f17ba"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
