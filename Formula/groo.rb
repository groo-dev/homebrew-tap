class Groo < Formula
  desc "CLI tool for managing and running dev servers in monorepos"
  homepage "https://github.com/groo-dev/cli"
  version "0.0.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.42/groo_darwin_arm64.tar.gz"
      sha256 "2c83f660ba9533f33f4fca41ac753dcd2ac368b5b375a0544955659826ab0d93"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.42/groo_darwin_amd64.tar.gz"
      sha256 "c0648fe7edba14c1260bf4ba93ebc3e3aaa2bafc7d8ba3e9146d13541e79559b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.42/groo_linux_arm64.tar.gz"
      sha256 "7bbefd3b7456cb2f63a8f37735049447ee98a3474f7503845a7e02eeeea76cc9"
    end
    on_intel do
      url "https://github.com/groo-dev/cli/releases/download/groo-v0.0.42/groo_linux_amd64.tar.gz"
      sha256 "19fd16c0eab92a1635b322d5c355f9a9f38ee3be737053f3abf00cb9b2a689a8"
    end
  end

  def install
    bin.install "groo"
  end

  test do
    system "#{bin}/groo", "--version"
  end
end
