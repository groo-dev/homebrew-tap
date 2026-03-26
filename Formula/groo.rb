class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.34/groo_darwin_arm64.tar.gz"
      sha256 "7a6d864e030d95ce5e61b9d219c304f5ff36c80f3a6939baed9cb60c38f77489"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.34/groo_darwin_amd64.tar.gz"
      sha256 "3d21496f9a9da94692094ae846b2185f8051e4cf7aa69df9e1651d9c0e7c7671"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.34/groo_linux_arm64.tar.gz"
      sha256 "79afee2e2d2492e0644e10cc24106b55cd06d4161775b77a01ae867c38e47160"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.34/groo_linux_amd64.tar.gz"
      sha256 "882d03a28aefa8ed32b9905ac47911043f77289772e4f7ff295c13344ca241e6"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
