class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.40/groo_darwin_arm64.tar.gz"
      sha256 "82a12148346d70af78de9e58c0f576de4fd5175822324d218c5d6c1fe84c02bb"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.40/groo_darwin_amd64.tar.gz"
      sha256 "30feb903a71aa28dcf5a231cc7082b5690cdd0874d1cf95d304ffe8418b1b7b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.40/groo_linux_arm64.tar.gz"
      sha256 "434c08d49f2ce13995c84e7c2ccd93bca6b17a40b73d9dba5ce38169b57b5979"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.40/groo_linux_amd64.tar.gz"
      sha256 "2593c87a4a40f2e478f51bc79f0c389e54e904f9ed7070e5c1a4f02edeaa1a7f"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
