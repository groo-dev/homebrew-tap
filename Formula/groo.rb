class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.16/groo_darwin_arm64.tar.gz"
      sha256 "837ecba8165830d1f7c3dcd5c41622d16840ca40b2a14453afe3e2a72fa518d1"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.16/groo_darwin_amd64.tar.gz"
      sha256 "741e71417c273666eee3e5d225ab5f198cbaed0a165d7d26da362e54530504fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.16/groo_linux_arm64.tar.gz"
      sha256 "d4dc82b220eb01221d226b866cbc5c2662f7000218eae22b714a850449c13669"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.16/groo_linux_amd64.tar.gz"
      sha256 "8380199151d04c5d23720750273c4effd880be4577ed5304f120e79b6a19a8c9"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
