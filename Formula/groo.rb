class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.23/groo_darwin_arm64.tar.gz"
      sha256 "a60e195c4b1159733af8b65b7d33b99f7ca1203f7d4d8a885afb6c00203836dd"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.23/groo_darwin_amd64.tar.gz"
      sha256 "092b8b80660410450fcfcfb91076a092b665cee02e6c35d7ac51891a5e16c625"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.23/groo_linux_arm64.tar.gz"
      sha256 "b0f4c1c6a9c2e788cac5db67976179732aa6330c8cc680fd54fc3efe904f248a"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.23/groo_linux_amd64.tar.gz"
      sha256 "4a1059d888de716ee779c865647f1106681304771920b95cc06febd4f21d0b2b"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
