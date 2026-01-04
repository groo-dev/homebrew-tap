class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.12/groo_darwin_arm64.tar.gz"
      sha256 "96638d76e7e2026dee03185c02b0291e3d3bad94d648792950f397665b944f02"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.12/groo_darwin_amd64.tar.gz"
      sha256 "a10d0c829c9705e0acef9bd69cb0cc36265c49955fdfee8d3ab15cdbdcc1e1f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.12/groo_linux_arm64.tar.gz"
      sha256 "80668aa51fa3ea1ada1c569e0d72692600fa466aec480f347d36d1e9698220e4"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.12/groo_linux_amd64.tar.gz"
      sha256 "a2dba8cc9a2fefbb36082b4425f321afbfc094ded6ccb5e07e3baa006463fa2d"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
