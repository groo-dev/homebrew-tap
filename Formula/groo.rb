class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.24/groo_darwin_arm64.tar.gz"
      sha256 "d148353295933e61ce60af32bec0afd74a177248c515d7fe632c5c8c1fbe1bd7"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.24/groo_darwin_amd64.tar.gz"
      sha256 "79cc6d687dde1bd56d90e8d70d4e067584ecf0b8a11a03fa400b31f891376dc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.24/groo_linux_arm64.tar.gz"
      sha256 "d9f330fbecafde500d5071c3db38bf0bfbde3153828771da2194134152f9d2de"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.24/groo_linux_amd64.tar.gz"
      sha256 "858a7fcbfd086e4f5777b5f7fcbd2af2f7680720d7d56c4c3beb4c057b8451d4"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
