class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.28/groo_darwin_arm64.tar.gz"
      sha256 "990feaa30e513ef0d8908a4535a9c70fd74c7ca855558972d50e6f6383238d8e"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.28/groo_darwin_amd64.tar.gz"
      sha256 "91a6363211a8c61e293338dd78183471d5aeba2221ca5cade741e20aa67bfc38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.28/groo_linux_arm64.tar.gz"
      sha256 "b8f3e28794ade66338264ab7187e5964ec8617a3df3fd582926254416a68f354"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.28/groo_linux_amd64.tar.gz"
      sha256 "f5cfa743837c1269ee4b7672a08b14fc029ca543db88469f57fa3afc8e6c5e59"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
