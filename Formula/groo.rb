class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.19/groo_darwin_arm64.tar.gz"
      sha256 "4afbbdc22b01c46286d59c81fe15fc22fcd9d5b53bad3905316e0dcd4583a227"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.19/groo_darwin_amd64.tar.gz"
      sha256 "0033a87221bbea268719e80d2f9f17ee83631d71717143b7d07c1178452a8105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.19/groo_linux_arm64.tar.gz"
      sha256 "8037ad7d7b00401eca003ff0a6953b59dad6c90ae47bde3411fdc6b45b371255"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.19/groo_linux_amd64.tar.gz"
      sha256 "bfd4ef473b7552309154ceebff3393b31245d2334c36d59805f8b1560870f8e4"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
