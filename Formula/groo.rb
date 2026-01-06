class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.25/groo_darwin_arm64.tar.gz"
      sha256 "7985fb236843fa9df72296d73373376bad25ace78f9bbaad1e1d0474aa8627a7"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.25/groo_darwin_amd64.tar.gz"
      sha256 "8021433a5499db81d35d468cf23a2d0230d7b9533907665dbd3a954cd509ef04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.25/groo_linux_arm64.tar.gz"
      sha256 "034cee0279e31d7dd31b67e0e8b74c4d524faadc4df75ea3ce7788d0a21fc92d"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.25/groo_linux_amd64.tar.gz"
      sha256 "f6362bbf7ea7966c344eb8fad2b51ce7d33a01faae95001c03545221639f3e58"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
