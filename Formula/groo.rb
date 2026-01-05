class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.21/groo_darwin_arm64.tar.gz"
      sha256 "07aeb37db8c310950c026cbfc900ce5730b75d62c377ba675aa7007afc4149c1"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.21/groo_darwin_amd64.tar.gz"
      sha256 "2aaabc3bbe2406882585c7289548c13153de433e2ba69da129f8ae97558cfe82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.21/groo_linux_arm64.tar.gz"
      sha256 "b8c706cf075e63980c04f849fafe48679730512eba12311946dd2a6f63015fe6"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.21/groo_linux_amd64.tar.gz"
      sha256 "0081d9bd749a9537db41ebc5173bbca8bbe589452ea7b1909dfc6d5a37924735"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
