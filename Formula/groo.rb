class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.33/groo_darwin_arm64.tar.gz"
      sha256 "500a8eac43a0093537424ca987ea9b0c0ee3b665c6a748f9fe07f862dbfb805d"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.33/groo_darwin_amd64.tar.gz"
      sha256 "9f430e11f22326fee7a8e8159a258ab65bcd9c270897c1a72b9dd537acdc39de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.33/groo_linux_arm64.tar.gz"
      sha256 "16c16062c59a5f7dff7d03db41f3dc6b2eb2819e95493eeee39af5685e531d11"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.33/groo_linux_amd64.tar.gz"
      sha256 "518037bf746e0ce629b9ae2e14091926223458a7f41908e9748227cd22776fc1"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
