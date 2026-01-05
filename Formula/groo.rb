class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.20/groo_darwin_arm64.tar.gz"
      sha256 "d683810ca269cea8e12aa57714b8e5e2d11277d1d4df718b56fa8157c3cf5760"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.20/groo_darwin_amd64.tar.gz"
      sha256 "3ea8964647202dbd3fd68dd959a848bb318f4959bc0ebada2d0dd379a3c32230"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.20/groo_linux_arm64.tar.gz"
      sha256 "b1939a07931a1761e82f1dc584cff8adae3c1ba8555b24c944b295b0a558dc60"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.20/groo_linux_amd64.tar.gz"
      sha256 "5a94bc5f2a30cf58863cfb40a0efa7837a59e9da655e0e3fd6d0c44f73adc8ee"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
