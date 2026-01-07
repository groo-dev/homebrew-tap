class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.26/groo_darwin_arm64.tar.gz"
      sha256 "e2d059858b218332e43d223159e59fd34320eb38aba7342ad24c34a5145a3c5f"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.26/groo_darwin_amd64.tar.gz"
      sha256 "2849aaecaa194f0a800bab6c53f04f3e309af563bbb79749b20296d468d7fa37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.26/groo_linux_arm64.tar.gz"
      sha256 "1e0e511447385630fe08c5b4555013b3e7a2fd21a741a4d8d2ebf2e65395d8c2"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.26/groo_linux_amd64.tar.gz"
      sha256 "2d7198adbc7f4c7de7f8a094b627fe78b4653a06f14ef45d3d6d57a6b8f7c133"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
