class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.11/groo_darwin_arm64.tar.gz"
      sha256 "ee373b166b502068ed8a88d9f95cca70ff419327eccadfe8a034dcde0a39a3da"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.11/groo_darwin_amd64.tar.gz"
      sha256 "8d6c1bf0e5b81ebcea56689482200ed40eda4faddd2fbbab020bf98fce1b0515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.11/groo_linux_arm64.tar.gz"
      sha256 "3d33625c9506259f020f7e90943fd313f968ef97e966fb8bbf1ce2623379e528"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.11/groo_linux_amd64.tar.gz"
      sha256 "5d6fff42da0328a38cc2f219aeb8a7ebca44af939b54c0b065a0608402845dce"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
