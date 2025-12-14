class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.5/groo_darwin_arm64.tar.gz"
      sha256 "08451c52c060767ea6c56662de7e469e7c48a97348ce55f1d3fa50976f0cd537"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.5/groo_darwin_amd64.tar.gz"
      sha256 "207436fad7a46f136496b23dc9362b65be0cecde722ca8526bbb3b67f6c069a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.5/groo_linux_arm64.tar.gz"
      sha256 "57057970cd5a82d2b45ee603ad3ec01fda2b3fd2250f0093fbe48508f3f4c6f1"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/v0.0.5/groo_linux_amd64.tar.gz"
      sha256 "da6178218f6c1872fcaefa7c000d4bfb0ed3ed75f253efd4e49bf1470e448970"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
