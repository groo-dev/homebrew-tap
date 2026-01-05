class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.14/groo_darwin_arm64.tar.gz"
      sha256 "3832b6263c2297abcd6fad7dcc2729359eb01bae6dbb91bd616fde10614da86d"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.14/groo_darwin_amd64.tar.gz"
      sha256 "bea6efc9a594cc53f053e359f7441571d7a726703615724f46d90c83fed41919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.14/groo_linux_arm64.tar.gz"
      sha256 "b48b65af1d9b8aa6741f4a7d6aaf759ee28922f8004eb4d4eed2935b3c07d1e8"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.14/groo_linux_amd64.tar.gz"
      sha256 "61ca8808f32e0e94fa98db2efa4ec1efbcde53997333bc08f08ba02a0ea5400c"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
