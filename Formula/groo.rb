class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.39/groo_darwin_arm64.tar.gz"
      sha256 "0c6e4b3ff6f1ebd29b1698d3d745f8e50d55eee434f18aada4cfbac9271fdbdf"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.39/groo_darwin_amd64.tar.gz"
      sha256 "4e68ea6e62a24b5b08dc206bbeb9228e61fd37eb26638758a57b86c2692e75e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.39/groo_linux_arm64.tar.gz"
      sha256 "18ab06087a17619dcf852a4cfe29a16f142f122ee9702a42b295738c221efff4"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.39/groo_linux_amd64.tar.gz"
      sha256 "b254d6e05599681b36a732e9ae48124dbfcda28951a3fb77acaf5d8cb9366b74"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
