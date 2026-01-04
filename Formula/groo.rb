class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.10/groo_darwin_arm64.tar.gz"
      sha256 "6e904059bbf57f0c152338eb273493936ac8c6dd8c61ef7982ac42daf9e68415"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.10/groo_darwin_amd64.tar.gz"
      sha256 "03881085073af25d46ce49dc4070be7ddb3679374c120944794bd70877d92580"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.10/groo_linux_arm64.tar.gz"
      sha256 "28c2388392bc1ca80b18410cc5d40888ef82ffab051083d6c7096c2bab3d7851"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.10/groo_linux_amd64.tar.gz"
      sha256 "fa26eb0999723d4cdc0434537c2655493fe9f21b068da477956321f77e61d9b4"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
