class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.15/groo_darwin_arm64.tar.gz"
      sha256 "ad0bec86c53cae93901f917602ad00e9f34dde96f2c7866f8386e440f3eef17d"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.15/groo_darwin_amd64.tar.gz"
      sha256 "67bcf3ad4587e751b63b2471cc5ed21d488466014e8629052d3752f60fab7bce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.15/groo_linux_arm64.tar.gz"
      sha256 "58b90cef6f196783a58fb3b7f19a46edecd0c6eea38a24d24cac9ab8b2c3cfa4"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.15/groo_linux_amd64.tar.gz"
      sha256 "319807af12ada5ecffbc768959ee40afdc9a64eb50674dee50c8f12ac9971eb3"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
