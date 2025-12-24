class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.8/groo_darwin_arm64.tar.gz"
      sha256 "3c30165669f56f765d19f1deef80ee208bfe6f5a16042e31169217e15d3e352e"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.8/groo_darwin_amd64.tar.gz"
      sha256 "cc03780376f12204a990893ccb1c661fbbc7b2c5e5870f614c81a9b55ad652a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.8/groo_linux_arm64.tar.gz"
      sha256 "1e051ea6ad3c71c81a231ce24169c8f1b815ff437af0075fa61246b855bdbc75"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.8/groo_linux_amd64.tar.gz"
      sha256 "77b9dd169bf7305bfb36871527b4d992c8dcfa4ba49faef0441b942fc1bf4469"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
