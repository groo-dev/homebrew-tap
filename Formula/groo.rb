class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.27/groo_darwin_arm64.tar.gz"
      sha256 "ede7a08e85f8c2c426b7146d4329548bf017d3b9b4ed4a9b8eeb8b188f74b59f"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.27/groo_darwin_amd64.tar.gz"
      sha256 "4226b65a8cc7aeedbb27d51a63fdb20b6895a7534a25f35f55e5e256b145f915"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.27/groo_linux_arm64.tar.gz"
      sha256 "fce3f33408d57cf553b40da13a8cb232f3253693f790c8322a977db3ed597165"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.27/groo_linux_amd64.tar.gz"
      sha256 "a3cd4140caa83f9cadacf70d2f78fb34226fe26c3685e79092f473f0a468e5f9"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
