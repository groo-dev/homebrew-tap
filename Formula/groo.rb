class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.37/groo_darwin_arm64.tar.gz"
      sha256 "5bc568ec99b07482e096c5ec614be360e056f50cc07a86c12ae53d866d9a8898"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.37/groo_darwin_amd64.tar.gz"
      sha256 "22cb571bee3a8c504f2bb1348ce89f6139e5f31e13c14f06e0ed8faa3fb8da71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.37/groo_linux_arm64.tar.gz"
      sha256 "050b57ccfa14633eb6af273591422e0b6f38e3389262a9d7fd9d22661ae9a6fa"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.37/groo_linux_amd64.tar.gz"
      sha256 "cc4c4b1e769fee3c449ef1c8c018745226123880fd4d1745ede23ec4227f40de"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
